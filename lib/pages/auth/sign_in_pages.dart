import 'package:flutter/material.dart';
import 'package:hotel_project/Widgets/Image_widget.dart';
import 'package:hotel_project/Widgets/button_widget.dart';
import 'package:hotel_project/Widgets/password_text_field_widget.dart';
import 'package:hotel_project/Widgets/text_field_widget.dart';
import 'package:hotel_project/Widgets/text_widget.dart';
import 'package:hotel_project/constants/spacings.dart';
import 'package:hotel_project/utils/extensions.dart';

class SignInePage extends StatelessWidget {
  const SignInePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Expanded(
                child: ImageWidget(
                  image:
                      'https://upload.wikimedia.org/wikipedia/commons/b/b5/IMG-20190601-WA0004.jpg',
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
                          TextFormFieldWidget(
                            textHint: 'Name',
                            iconTextFiel: Icons.person_2_outlined,
                          ),
                          TextFormFieldWidget(
                            textHint: 'Enter Email Address',
                            iconTextFiel: Icons.email_outlined,
                            inputType: TextInputType.emailAddress,
                          ),
                          hVSpace8,
                          const PasswordWidget(
                              textHint: 'Enter Password',
                              inputType: TextInputType.visiblePassword,
                              iconTextFiel: Icons.lock_outline)
                        ]),
                      ),
                      hVSpace16,
                      Column(
                        children: [
                          ButtonsWidget(
                            text: "Sign up",
                            onPressed: () {
                              // const SignInScreen().push(context);
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
