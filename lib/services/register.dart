import 'package:flutter/material.dart';
import 'package:petecommerce/login%20page.dart';

import '../colors.dart';
import 'auth.dart';

class Register extends StatefulWidget {

  final Function? toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  String email='';
  String password ='';
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
                "Register",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50,30,50,50),
              child: Form(
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
                    SizedBox(height: 20,),
                    TextField(
                      decoration:
                      InputDecoration(prefixIcon: Icon(Icons.phone),border: OutlineInputBorder(),
                          labelText: 'Mobile Number',hintText: 'Enter Password'),

                      onChanged: (val){

                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColor.fawn),
              width: 160,height: 50, alignment: Alignment.center,
              child: FlatButton(
                child: Text("Register",style: TextStyle(fontSize: 16,color: Colors.white),) ,
                onPressed: () async{
                  print(email); print(password);
                },
              ),
            ),
            SizedBox(height: 50,),
            Text("Go back to"),
            FlatButton(onPressed: (){
              Navigator.pop(context);

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>Authenticate()));
            },
              child: Text("Sign In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
          ]
      ),
    );
  }
}
