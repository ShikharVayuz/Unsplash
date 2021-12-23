import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/signup/widgets/back_appbar.dart';
import '/signup/widgets/continue_widget.dart';

class SignupOtp extends StatelessWidget {
  const SignupOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          backAppBar(context: context, skip: false, title: "", search: false),
      body: Column(
        children: [
          SizedBox(height: 100),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Enter confirmation code",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 26),
                ),
                SizedBox(height: 15),
                Text(
                  "Enter the code we sent to",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "+14357342343",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _textFieldOTP(context, first: true, last: false),
              _textFieldOTP(context, first: true, last: false),
              _textFieldOTP(context, first: true, last: false),
              _textFieldOTP(context, first: true, last: true),
            ],
          )
        ],
      ),
      floatingActionButton: ContinueButton(function: () {}),
    );
  }

  _textFieldOTP(BuildContext context, {required bool first, last}) {
    return Container(
      height: 85,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: false,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            hintText: "-",
            hintStyle: TextStyle(color: Colors.black12),
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(50)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.deepPurple),
                borderRadius: BorderRadius.circular(50)),
          ),
        ),
      ),
    );
  }
}
