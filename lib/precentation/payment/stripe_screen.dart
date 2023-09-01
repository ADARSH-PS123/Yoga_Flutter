import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stripe/flutter_stripe.dart' as stripe;
import 'package:yoga/core/constants.dart';
import 'package:yoga/core/secure_storage.dart';
import 'package:yoga/domain/entroll/model/entroll.dart';
import 'package:yoga/domain/entroll/model/payment_intent_model.dart';
import 'package:yoga/precentation/main/main_page.dart';

import '../../core/api.dart';
import '../../core/theme/colors.dart';

class StripePaymentScreen extends StatefulWidget {
  final int amount;
  const StripePaymentScreen({
    Key? key,
    required this.amount,
  }) : super(key: key);

  @override
  State<StripePaymentScreen> createState() => _StripePaymentScreenState();
}

class _StripePaymentScreenState extends State<StripePaymentScreen> {
  Future<PaymentInentModel> intent(int amount) async {
    final dio = Dio();
    const url = 'https://gurujisanjeevkrishna.com/api/payment-intent';

    try {
      final response = await dio.post(
        url,
        data: {'amount': amount},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = PaymentInentModel.fromJson(response.data);

        return result;
      } else {
        log('API call failed with status code: ${response.statusCode}');
        log('Response data: ${response.data}');
        return PaymentInentModel();
      }
    } on DioError catch (error) {
      log('Error during API call: ${error.message}');
      return PaymentInentModel();
    }
  }

  Future<Entroll> subscribe(int id, bool isVisdom) async {
    final dio = Dio();
    final bearToken = await getTokenFromSS(secureStoreKey);

    final headers = {
      'Authorization': 'Bearer $bearToken',
      'Content-Type': 'application/json',
    };

    try {
      final response =
          await dio.post(isVisdom ? EndPoints.vWisdom : EndPoints.vSky,
              data: {
                'id': id,
              },
              options: Options(headers: headers));

      switch (response.statusCode) {
        case 200:
        case 201:
          return Entroll.fromJson(response.data);

        default:
          return Entroll();
      }
    } on DioError catch (error) {
      log('Error during API call: ${error.message}');
      return Entroll();
    }
  }

  Future<void> initPaymentSheet() async {
    try {
      final data = await intent(widget.amount * 100);

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
  void initState() {
    initPaymentSheet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text("Payment Screen"),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Text("Summary",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20)),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Original Prize:",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                  Text("₹${widget.amount}",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Discount:",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                  Text("₹0",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.normal, color: Colors.black)),
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
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                  Text("₹${widget.amount}",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                ],
              ),
              const SizedBox(height: 10),
              Text.rich(
                  TextSpan(
                    text: "By completing your purchase you agree to these ",
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
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
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
                child: Text("Pay now"),
                onPressed: () => _displayPaymentSheet(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _displayPaymentSheet() async {
    try {
      await stripe.Stripe.instance
          .presentPaymentSheet(
              options:
                  const stripe.PaymentSheetPresentOptions(timeout: 1200000))
          .then((value) {
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
