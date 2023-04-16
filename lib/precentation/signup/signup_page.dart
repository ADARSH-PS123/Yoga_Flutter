import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoga/application/register/register_bloc.dart';
import 'package:yoga/precentation/onboarding/onboarding_page.dart';
import 'package:yoga/precentation/pogramms/pogramms_page.dart';
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
  String typetextEditingController = "";
  TextEditingController mobiletextEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3E4C59),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff3E4C59),
      ),
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "REGISTOR",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
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
                  const SizedBox(height: 20),
                  SizedBox(
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
                  const SizedBox(height: 20),
                  SizedBox(
                    child: DropdownButtonFormField(
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                      validator: (valid) {
                        if (valid == null) {
                          return "Select One Option";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                            bottom: 20, left: 20, right: 20),
                        hintText: "Select Type",
                        hintStyle: const TextStyle(fontSize: 16),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                const BorderSide(color: Colors.red, width: 1)),
                      ),
                      items: <String>[
                        'Online',
                        'Offline',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 20),
                          ),
                        );
                      }).toList(),
                      onChanged: (v) {
                        setState(() {
                          typetextEditingController = v.toString();
                          log(typetextEditingController);
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
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

                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const ProgrammsPage(),
                          ),
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
                                    userType: typetextEditingController,
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
