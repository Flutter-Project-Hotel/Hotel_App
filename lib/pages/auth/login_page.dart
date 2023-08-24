import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:hotel_project/Widgets/button_widget.dart';
import 'package:hotel_project/Widgets/text_widget.dart';
import 'package:hotel_project/app.dart';
import 'package:hotel_project/constants/spacings.dart';
import 'package:hotel_project/pages/auth/sign_up_page.dart';
import 'package:hotel_project/utils/extensions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            Expanded(
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
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        child: Column(children: [
                          const TextWidget(
                              text: "Welcome back",
                              size: 30,
                              istextBold: true,
                              isColorOpacity: true),
                          hVSpace16,

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
                          // const PasswordWidget(
                          //     textHint: 'Enter Password',
                          //     inputType: TextInputType.visiblePassword,
                          //     iconTextFiel: Icons.lock_outline)
                        ]),
                      ),
                      Column(
                        children: [
                          ButtonsWidget(
                            text: "LogIn ",
                            onPressed: () async {
                              if ((emailController.text.isNotEmpty &&
                                      emailController.text.isValidEmail) &&
                                  passwordController.text.isNotEmpty) {
                                // Signing up ...
                                await supabase.auth.signInWithPassword(
                                  email: emailController.text,
                                  password: passwordController.text,
                                );
                                if (context.mounted) {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const App()),
                                      (route) {
                                    return false;
                                  });
                                }
                              }
                            },
                          ),
                        ],
                      ),
                      hVSpace16,
                      Column(
                        children: [
                          ButtonsWidget(
                            text: "Sign up",
                            onPressed: () {
                              const SignUpPage().push(context);
                            },
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
