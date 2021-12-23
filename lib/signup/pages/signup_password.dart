import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/signup/widgets/back_appbar.dart';
import '/signup/widgets/continue_widget.dart';

class SignupPassword extends StatefulWidget {
  const SignupPassword({Key? key}) : super(key: key);

  @override
  _SignupPasswordState createState() => _SignupPasswordState();
}

class _SignupPasswordState extends State<SignupPassword> {
  final _formkey = GlobalKey<FormState>();
  var _isHidden = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          backAppBar(context: context, skip: false, title: "", search: false),
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Set a password",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 26),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Your password should be atleast",
                    softWrap: true,
                    textScaleFactor: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500],
                        fontSize: 18),
                  ),
                  Text(
                    "8 characters long.",
                    softWrap: true,
                    textScaleFactor: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500],
                        fontSize: 18),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                onEditingComplete: () => FocusScope.of(context).nextFocus(),
                readOnly: true,
                obscureText: _isHidden,
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return "Password cannot be empty";
                //   } else if (value.length < 8) {
                //     return "Enter password greater than 8 alphabets";
                //   }
                //   return null;
                // },
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  //errorText: "Try Again",
                  suffixIcon: IconButton(
                    icon: _isHidden
                        ? Icon(CupertinoIcons.eye)
                        : Icon(CupertinoIcons.eye_fill),
                    onPressed: () {
                      setState(() {
                        _isHidden = !_isHidden;
                      });
                    },
                  ),
                  alignLabelWithHint: true,
                  labelText: "PASSWORD",
                  labelStyle: TextStyle(
                      color: Colors.grey[500], fontWeight: FontWeight.w600),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12)),
                ),
                autofocus: false,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: ContinueButton(function: () {}),
    );
  }
}
