import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:hotel_project/Widgets/button_widget.dart';
import 'package:hotel_project/Widgets/text_widget.dart';
import 'package:hotel_project/app.dart';
import 'package:hotel_project/constants/spacings.dart';
import 'package:hotel_project/models/booking.dart';
import 'package:hotel_project/pages/auth/sign_up_page.dart';
import 'package:hotel_project/utils/extensions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, this.imageWelcome});
  final Booking? imageWelcome;

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
                Stack(children: [
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
                                  text: "Welcome back",
                                  size: 30,
                                  istextBold: true,
                                  isColorOpacity: true),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 0, 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextField(
                                      controller: emailController,
                                      decoration: const InputDecoration(
                                          labelText: 'Email',
                                          border: OutlineInputBorder()),
                                    ),
                                  ],
                                ),
                              ),
                              hVSpace8,
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 0, 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextField(
                                      controller: passwordController,
                                      decoration: const InputDecoration(
                                          labelText: 'Password',
                                          border: OutlineInputBorder()),
                                      obscureText: true,
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                            Column(
                              children: [
                                ButtonsWidget(
                                  text: "LogIn ",
                                  onPressed: () async {
                                    if ((emailController.text.isNotEmpty &&
                                            emailController
                                                .text.isValidEmail) &&
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
                                                builder: (context) =>
                                                    const App()), (route) {
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
                                  text: "SignUp",
                                  onPressed: () {
                                    const SignUpPage().push(context);
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ]),
              ],
            ),
          ]),
    );
  }
}
