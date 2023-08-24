import 'package:flutter/material.dart';
import 'package:hotel_project/Widgets/Image_widget.dart';
import 'package:hotel_project/Widgets/button_widget.dart';
import 'package:hotel_project/Widgets/password_text_field_widget.dart';
import 'package:hotel_project/Widgets/text_field_widget.dart';
import 'package:hotel_project/Widgets/text_widget.dart';
import 'package:hotel_project/pages/auth/sign_in_pages.dart';
import 'package:hotel_project/constants/spacings.dart';
import 'package:hotel_project/utils/extensions.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Expanded(
                flex: 1,
                child: ImageWidget(
                  image:
                      'https://upload.wikimedia.org/wikipedia/commons/b/b5/IMG-20190601-WA0004.jpg',
                  imageHeight: context.width,
                ),
              ),
            ),
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
                          TextWidget(
                              text: "Welcome back",
                              size: 30,
                              istextBold: true,
                              isColorOpacity: true),
                          hVSpace16,
                          TextFormFieldWidget(
                            textHint: 'Enter Email Address',
                            iconTextFiel: Icons.email_outlined,
                            inputType: TextInputType.emailAddress,
                          ),
                          hVSpace8,
                          PasswordWidget(
                              textHint: 'Enter Password',
                              inputType: TextInputType.visiblePassword,
                              iconTextFiel: Icons.lock_outline)
                        ]),
                      ),
                      Column(
                        children: [
                          ButtonsWidget(
                            text: "Login",
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const LoginPage()));
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
                                              const SignInePage().push(context);

                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const LoginPage()));
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
