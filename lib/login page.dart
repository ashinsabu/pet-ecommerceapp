import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petecommerce/colors.dart';
import 'package:petecommerce/services/auth.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.palespring,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
          ),
          RaisedButton(
            child: Text("Sign in as Guest") ,
            onPressed: () async{
              dynamic result = await _auth.signInAnon();
              if(result == null){
                print('Error signing in');
              }
              else
                print('Signed in as Guest.');
              print (result.uid);
            },
          ),
        ]
      ),
    );
  }
}

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
  }
  Widget build(BuildContext context) {
    return Container(

      child: SignIn(),
    );
  }
}
