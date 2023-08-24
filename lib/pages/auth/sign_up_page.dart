import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hotel_project/Widgets/Image_widget.dart';
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
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Expanded(
                child: ImageWidget(
                  image:
                      'https://lcotzphrhnuetkcblvln.supabase.co/storage/v1/object/public/images/%20welcome.png',
                  imageHeight: context.width,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: context.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        child: Column(children: [
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
                          // TextFormFieldWidget(
                          //   textHint: 'Enter Email Address',
                          //   iconTextFiel: Icons.email_outlined,
                          //   inputType: TextInputType.emailAddress,
                          // ),
                          hVSpace8,
                          TextField(
                            controller: passwordController,
                            decoration: const InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder()),
                            obscureText: true,
                          ),
                        ]),
                      ),
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
            ),
          ],
        ),
      ),
    );
  }
}
