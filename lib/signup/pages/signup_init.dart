import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import '/signup/signup_routes/routes.dart';
import '/signup/widgets/back_appbar.dart';

class Signup1 extends StatelessWidget {
  const Signup1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          backAppBar(context: context, skip: false, title: "", search: false),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign up",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            signupBoxWidget(
              context,
              Icons.phone_android,
              () => Navigator.pushNamed(context, MyRoutes.signupmobile),
            ),
            SizedBox(height: 15),
            signupBoxWidget(
              context,
              Icons.mail_outline,
              () => Navigator.pushNamed(context, MyRoutes.signupemail),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: ExpansionTile(
                //expandedAlignment: Alignment.center,
                title: Text(
                  "More",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                initiallyExpanded: false,
                childrenPadding: const EdgeInsets.all(40.0),
                backgroundColor: Colors.transparent,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      tileButton(LineIcon.facebook(size: 34), () {}),
                      tileButton(LineIcon.googleLogo(size: 34), () {}),
                      //tileButton(LineIcon.instagram(size: 34), () {}),
                      tileButton(LineIcon.twitter(size: 34), () {}),
                      tileButton(LineIcon.apple(size: 34), () {}),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have account? ",
              style: TextStyle(fontSize: 18),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Sign in",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ))
          ],
        ),
      ),
    );
  }

  Widget tileButton(Icon icon, Function function) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: IconButton(onPressed: () => function, icon: icon),
    );
  }

  Widget signupBoxWidget(
      BuildContext context, IconData icon, Function function) {
    return Container(
      width: 250,
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: ListTile(
          title: Text(
            "Continue with",
            style: TextStyle(),
          ),
          trailing: Icon(icon),
          onTap: () {
            function();
          },
        ),
      ),
    );
  }
}
