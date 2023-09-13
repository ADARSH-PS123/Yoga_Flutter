import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart' as stripe;
import 'package:yoga/application/entroll/entroll_bloc.dart';
import 'package:yoga/core/constants.dart';
import 'package:yoga/core/secure_storage.dart';
import 'package:yoga/domain/entroll/model/entroll.dart';
import 'package:yoga/domain/entroll/model/payment_intent_model.dart';

import '../../core/api.dart';
import '../../core/theme/colors.dart';
import '../main/main_page.dart';

class StripePaymentScreen extends StatefulWidget {
  final PyamentType pyamentType;
  final int? amount;
  final int id;

  const StripePaymentScreen(
      {Key? key, required this.pyamentType, required this.id, this.amount})
      : super(key: key);

  @override
  State<StripePaymentScreen> createState() => _StripePaymentScreenState();
}

class _StripePaymentScreenState extends State<StripePaymentScreen> {
  bool isIniating = false;

  Future<Entroll> subscribe(
      int id, PyamentType pyamentType, String transactionId) async {
    final dio = Dio();
    final bearToken = await getTokenFromSS(secureStoreKey);

    final headers = {
      'Authorization': 'Bearer $bearToken',
      'Content-Type': 'application/json',
    };

    try {
      final response = await dio.post(
          pyamentType == PyamentType.vWisdom
              ? EndPoints.vWisdom
              : EndPoints.vSky,
          data: {'id': id, 'transaction_id': transactionId},
          options: Options(headers: headers));

      switch (response.statusCode) {
        case 200:
        case 201:
          log(response.data.toString());
          return Entroll.fromJson(response.data);

        default:
          return Entroll();
      }
    } on DioException catch (error) {
      log('Error during API call: ${error.message}');
      return Entroll();
    }
  }

  Future<void> initPaymentSheet(PaymentInentModel data) async {
    try {
      if (data.data != null) {
        await stripe.Stripe.instance.initPaymentSheet(
          paymentSheetParameters: stripe.SetupPaymentSheetParameters(
            // Set to true for custom flow
            customFlow: false,
            // Main params
            merchantDisplayName: 'Flutter Stripe Store Demo',
            paymentIntentClientSecret: data.data!.clientSecret,
            // Customer keys

            customerId: data.data!.id,
            // Extra options

            style: ThemeMode.dark,
          ),
        );
      }
    } on stripe.StripeConfigException catch (e) {
      log(e.message.toString());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.message}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<EntrollBloc>().add(EntrollEvent.paymentIntent(
          amount: widget.amount != null ? widget.amount! * 100 : 1000));
    });

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Checkout",
            style: TextStyle(fontSize: 24),
          ),
        ),
        body: WillPopScope(
          onWillPop: () async {
            bool confirm = await showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Colors.black,
                  title: const Column(
                    children: [
                      Icon(
                        Icons.warning_rounded,
                        size: 70,
                        color: Colors.yellow,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Confirmation',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Are you sure you want to go back?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor:
                                    Colors.yellow, // Button background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      100), // Rounded corners
                                ),
                                maximumSize:
                                    Size(200, double.infinity), // Maximum width
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .pop(true); // Return true if confirmed
                              },
                              child: const Text('Yes'),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor:
                                    Colors.white, // Button background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      100), // Rounded corners
                                ),
                                maximumSize:
                                    Size(200, double.infinity), // Maximum width
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .pop(false); // Return false if canceled
                              },
                              child: const Text('No'),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            );

            return confirm;
            // Return true if confirmed, false if canceled
          },
          child: BlocBuilder<EntrollBloc, EntrollState>(
            builder: (context, state) {
              if (state.intentLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state.intentCreated) {
                initPaymentSheet(state.intetData!);
                return Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 50),
                        Text("Summary",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20)),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Original Prize:",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                            Text("\$ ${widget.amount ?? 10}",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Discount:",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                            Text("\$ 0",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                          ],
                        ),
                        const Divider(
                          color: AppColor.blackColor,
                          thickness: 1,
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Total:",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                            Text("\$ ${widget.amount ?? 10}",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text.rich(
                            TextSpan(
                              text:
                                  "By completing your purchase you agree to these ",
                              children: [
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // Navigator.of(context).push(MaterialPageRoute(
                                      //   builder: (context) =>
                                      //       const TermsAndConditionsPage(),
                                      // ));
                                      HapticFeedback.vibrate();
                                    },
                                  text: "Terms of Service.",
                                  style: const TextStyle(
                                    color: AppColor.blackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontWeight: FontWeight.normal,
                                  color: AppColor.blackColor,
                                )),
                        const SizedBox(height: 50),
                        TextButton(
                          style: TextButton.styleFrom(
                              maximumSize: const Size(double.maxFinite, 50),
                              minimumSize: const Size(double.maxFinite, 50),
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.all(15)),
                          child: Text("Pay now   \$ ${widget.amount ?? 10}"),
                          onPressed: () => _displayPaymentSheet(),
                        ),
                      ],
                    ),
                  ),
                );
              }
              if (state.isError) {
                return const ErrorWidget();
              }
              return const ErrorWidget();
            },
          ),
        ));
  }

  Widget waitingAlert(BuildContext ctx) => AlertDialog(
        backgroundColor: AppColor.blackColor,
        elevation: 0,
        content: Row(
          children: [
            const SizedBox(width: 20),
            const SizedBox(
                height: 15,
                width: 15,
                child: CircularProgressIndicator(
                  color: Colors.white,
                )),
            const SizedBox(width: 20),
            Text(
              "please wait...",
              style: Theme.of(ctx).textTheme.bodyMedium,
            )
          ],
        ),
      );

  Future<void> _displayPaymentSheet() async {
    try {
      await stripe.Stripe.instance
          .presentPaymentSheet(
              options:
                  const stripe.PaymentSheetPresentOptions(timeout: 1200000))
          .then((value) async {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => waitingAlert(context),
        );
        await stripe.Stripe.instance.confirmPaymentSheetPayment().then((ee) {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const MainPage(),
              ),
              (route) => false);

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Payment successfully completed'),
            ),
          );
        });

// subscribe(widget.id, widget.pyamentType,value.).then((value) => null);
      });
    } on stripe.StripeConfigException catch (e) {
      log(e.message);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message),
        ),
      );
    }
  }
}

enum PyamentType {
  vSky,
  vWisdom,
  yoga,
}

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              "Server Error",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.normal,
                    color: AppColor.blackColor,
                  ),
            ),
            TextButton(
                style: TextButton.styleFrom(
                    maximumSize: const Size(double.maxFinite, 50),
                    minimumSize: const Size(double.maxFinite, 50),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(15)),
                child: const Text("Go to home"),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ),
                      (route) => false);
                }),
          ],
        ),
      ),
    );
  }
}
