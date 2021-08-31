import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petecommerce/colors.dart';
import 'package:petecommerce/home.dart';
import 'package:petecommerce/services/auth.dart';
import 'package:petecommerce/services/register.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  //text field state
  String email='';
  String password ='';
  String error ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFEED0B1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,50,0,10),
            child: Text(
              "Pet Stop",
              style: TextStyle(
                  fontFamily: 'Niconne',
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: AppColor.coffee,
                shadows: [
                Shadow(
                blurRadius: 10.0,
                color: Colors.brown,
                offset: Offset(2.0, 2.0),
              ),],
              ),
              ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(50,30,50,20),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                  TextField(

                    decoration:
                    InputDecoration(prefixIcon: Icon(Icons.account_box_rounded),border: OutlineInputBorder(),
                        labelText: 'Username/Email',hintText: 'Enter your Username or Email'),
                    onChanged: (val){
                      setState(()=>email=val);
                    },

                  ),
                  SizedBox(height: 20,),
                  TextField(
                    decoration:
                    InputDecoration(prefixIcon: Icon(Icons.lock),border: OutlineInputBorder(),
                        labelText: 'Password',hintText: 'Enter Password'),
                    obscureText: true,
                    onChanged: (val){
                      setState(()=>password=val);

                    },
                  ),
                ],
              ),
            ),
          ),
          Text(error,style: TextStyle(color: Colors.red,fontSize: 14),),
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColor.fawn),
            width: 160,height: 50, alignment: Alignment.center,
            child: FlatButton(
              child: Text("Sign in",style: TextStyle(fontSize: 16,color: Colors.white),) ,
              onPressed: () async{
              // Navigator.pop(context);
              //
              //  Navigator.push(context,
              //   MaterialPageRoute(builder: (context) =>userhome()));
                print(email); print(password);
                dynamic result=await _auth.signInWithEmailAndPassword(email, password);
                if(result == null){
                  setState(() => error ='Could not sign in with given credentials.');
                }}
            ),
            ),

          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColor.fawn),
            width: 160,height: 50, alignment: Alignment.center,
            child: FlatButton(
              child: Text("Sign in as Guest",style: TextStyle(fontSize: 16,color: Colors.white),) ,
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
          ),
          SizedBox(height: 10,),
          Text("If you don't have an account."),
          FlatButton(onPressed: (){
            Navigator.pop(context);

            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>Register()));
          }, child: Text("Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),


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
  bool showSignIn = true;

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
  }
  Widget build(BuildContext context) {

    return SignIn();
  }
}
