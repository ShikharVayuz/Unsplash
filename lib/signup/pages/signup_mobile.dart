import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '/signup/signup_routes/routes.dart';
import '/signup/widgets/back_appbar.dart';
import '/signup/widgets/continue_widget.dart';

class SignupMobile extends StatelessWidget {
  const SignupMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            backAppBar(context: context, skip: false, title: "", search: false),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Center(
              child: Text(
                "What's your mobile number?",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 26),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Row(
                children: [
                  Text(
                    "MOBILE NUMBER",
                    style: TextStyle(color: Colors.grey[500], fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              //Todo: Change the field borders
              padding: const EdgeInsets.all(16.0),
              child: InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                //keyboardType: TextInputType.phone,
                hintText: "",
                isEnabled: true,
                inputBorder: OutlineInputBorder(),
                spaceBetweenSelectorAndTextField: 8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "We will send you a text verification code.",
                    style: TextStyle(color: Colors.grey[500], fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: ContinueButton(
          function: () {
            Navigator.pushNamed(context, MyRoutes.signupotp);
          },
        ));
  }
}
