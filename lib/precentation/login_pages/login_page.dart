import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoga/application/login/login_bloc.dart';
import 'package:yoga/precentation/onboarding/onboarding_page.dart';
import 'package:yoga/precentation/widgets/text_form_feild.dart';

import '../../core/constants.dart';
import '../../core/secure_storage.dart';
import '../widget/button_widget.dart';

class LoginOptionsPage extends StatelessWidget {
  const LoginOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailtextEditingController = TextEditingController();
    TextEditingController passwordtextEditingController =
        TextEditingController();
    final _formKey = GlobalKey<FormState>();

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
                    "LOGIN NOW",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const SizedBox(height: 20),
                  SizedBox(
    
                    child: InputFieldWidget(
                      controller: emailtextEditingController,
                      hintText: "Email",
                      validator: (v) {
                        final RegExp emailRegex = RegExp(
                          r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                          caseSensitive: false,
                          multiLine: false,
                        );
                        if (v!.isEmpty) {
                          return "Please Enter Email";
                        } else if (!v.contains(emailRegex)) {
                          return "Please Enter Valid Email";
                        }

                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: InputFieldWidget(
                      controller: passwordtextEditingController,
                      hintText: "password",
                      validator: (v) {},
                    ),
                  ),
                  const SizedBox(height: 30),
                  BlocConsumer<LoginBloc, LoginState>(
                    listener: (context, state) {
                      if (state.isError) {
                        log('incorrect Password or maile');

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('incorrect Password or maile')),
                        );
                      } else if (state.hasmpinValidationData) {
                        addTokenToSS(secureStoreKey,
                            state.authDetails!.token.toString());

                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const OnBoardingScreen(),
                          ),
                        );
                      }
                    },
                    builder: (context, state) {
                      return ButtonWidget(
                        isLoading: state.isLoading,
                        buttonName: "Login",
                        voidCallback: () {
                          if (_formKey.currentState!.validate()) {
                            log("login called");
                            context.read<LoginBloc>().add(
                                  LoginEvent.login(
                                    email:
                                        emailtextEditingController.value.text,
                                    password: passwordtextEditingController
                                        .value.text,
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
