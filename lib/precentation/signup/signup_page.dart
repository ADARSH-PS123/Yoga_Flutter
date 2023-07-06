import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoga/application/register/register_bloc.dart';
import 'package:yoga/precentation/common_widget/custom_snackbar.dart';
import 'package:yoga/precentation/initialize/initialize.dart';
import 'package:yoga/precentation/widget/button_widget.dart';
import 'package:yoga/precentation/widgets/text_form_feild.dart';
import '../../core/constants.dart';
import '../../core/secure_storage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailtextEditingController = TextEditingController();
  TextEditingController passwordtextEditingController = TextEditingController();
  TextEditingController firstNametextEditingController =
      TextEditingController();
  TextEditingController lastNametextEditingController = TextEditingController();

  TextEditingController mobiletextEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final List<String> items = [
    'Online',
    'Offline',
  ];
  String selectedValue = "Online";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3E4C59),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff3E4C59),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "REGISTER",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      child: Row(
                        children: [
                          Expanded(
                            child: InputFieldWidget(
                              controller: firstNametextEditingController,
                              hintText: "First Name",
                              validator: (value) {
                                RegExp regex = RegExp('[a-zA-Z]');

                                if (value!.isEmpty) {
                                  return 'Enter Your Name';
                                } else if (!regex.hasMatch(value)) {
                                  return 'Enter a Valid Name';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: InputFieldWidget(
                              controller: lastNametextEditingController,
                              hintText: "Last Name",
                              validator: (value) {
                                RegExp regex = RegExp('[a-zA-Z]');

                                if (value!.isEmpty) {
                                  return 'Enter Your Name';
                                } else if (!regex.hasMatch(value)) {
                                  return 'Enter a Valid Name';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      child: InputFieldWidget(
                        controller: emailtextEditingController,
                        hintText: "Email",
                        validator: (value) {
                          RegExp regex = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

                          if (value!.isEmpty) {
                            return 'Enter Your Email';
                          } else if (!regex.hasMatch(value)) {
                            return 'Enter a Valid Email';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(
                      bottom: 15,
                      left: 20,
                      right: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    child: DropdownButton2(
                      underline: const SizedBox(),
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value as String;
                        });
                      },
                      dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      buttonStyleData: ButtonStyleData(
                        height: 50,
                        width: double.maxFinite,
                        padding: const EdgeInsets.only(left: 14, right: 14),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Colors.black26,
                          ),
                          color: Colors.white,
                        ),
                        elevation: 2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      child: InputFieldWidget(
                        controller: mobiletextEditingController,
                        hintText: "Mobile",
                        validator: (value) {
                          // RegExp regex = RegExp(
                          //     r'/^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/');
                          // if (!regex.hasMatch(value!)) {
                          //   return 'Enter Valid Phone Number';
                          // }

                          return null;
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  BlocConsumer<RegisterBloc, RegisterState>(
                    listener: (context, state) {
                      if (state.isError) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Somthing Went Wrong')),
                        );
                      } else if (state.hasmpinValidationData) {
                        addTokenToSS(secureStoreKey,
                            state.authDetails!.token.toString());

                        CustomSnackBar.show(
                          context,
                          'You are successfully joined 🥳',
                          Colors.black,
                        );

                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const Initialize(),
                          ),
                          (route) => false,
                        );
                      }
                    },
                    builder: (context, state) {
                      return ButtonWidget(
                        isLoading: state.isLoading,
                        buttonName: "REGISTER NOW",
                        voidCallback: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<RegisterBloc>().add(
                                  RegisterEvent.register(
                                    email:
                                        emailtextEditingController.value.text,
                                    password: passwordtextEditingController
                                        .value.text,
                                    mobile:
                                        mobiletextEditingController.value.text,
                                    name:
                                        "${firstNametextEditingController.value.text} ${lastNametextEditingController.value.text}",
                                    userType: selectedValue,
                                  ),
                                );
                          }
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
