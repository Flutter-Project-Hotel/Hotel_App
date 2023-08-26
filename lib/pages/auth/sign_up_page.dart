import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:hotel_project/Widgets/button_widget.dart';
import 'package:hotel_project/Widgets/text_widget.dart';
import 'package:hotel_project/constants/spacings.dart';
import 'package:hotel_project/utils/extensions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final supabase = Supabase.instance.client;
    log('Token: ${supabase.auth.currentSession?.accessToken}');
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 236, 231, 231),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(0, 400, 0, 0),
        shrinkWrap: true,
        reverse: true,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    height: 535,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                      child: Column(
                        children: [
                          Column(children: [
                            const TextWidget(
                                text: "Create New Account",
                                size: 25,
                                istextBold: true,
                                isColorOpacity: true),
                            hVSpace16,
                            TextField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                  labelText: 'Name',
                                  border: OutlineInputBorder()),
                            ),
                            hVSpace8,
                            TextField(
                              controller: emailController,
                              decoration: const InputDecoration(
                                  labelText: 'Email',
                                  border: OutlineInputBorder()),
                            ),
                            hVSpace8,
                            TextField(
                              controller: passwordController,
                              decoration: const InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder()),
                              obscureText: true,
                            ),
                          ]),
                          hVSpace16,
                          Column(
                            children: [
                              ButtonsWidget(
                                text: "SignUp ",
                                onPressed: () async {
                                  if ((emailController.text.isNotEmpty &&
                                          emailController.text.isValidEmail) &&
                                      passwordController.text.isNotEmpty) {
                                    // Signing in ...
                                    await supabase.auth.signUp(
                                      email: emailController.text,
                                      password: passwordController.text,
                                    );
                                    if (context.mounted) {
                                      context.pop;
                                    }
                                  }
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
