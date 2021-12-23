import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/signup/signup_routes/routes.dart';
import '/signup/widgets/back_appbar.dart';
import '/signup/widgets/continue_widget.dart';

class SignupEmail extends StatelessWidget {
  const SignupEmail({Key? key}) : super(key: key);

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
              "What's your mobile email?",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 26),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: TextField(
              autofocus: false,
              enableInteractiveSelection: true,
              decoration: InputDecoration(
                labelText: "EMAIL",
                labelStyle: TextStyle(color: Colors.grey[500], fontSize: 24),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                hintText: "jeenadevis@gmail.com",
                hintStyle: TextStyle(color: Colors.grey[500]),
                helperText: "We will send you a text verification code.",
                helperStyle: TextStyle(fontSize: 15),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
        ],
      ),
      floatingActionButton: ContinueButton(function: () {
        Navigator.pushReplacementNamed(context, MyRoutes.signupPassword);
      }),
    );
  }
}
