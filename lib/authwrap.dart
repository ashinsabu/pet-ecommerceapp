import 'package:flutter/material.dart';
import 'package:petecommerce/home.dart';
import 'package:petecommerce/login%20page.dart';
import 'models/user.dart';
import 'package:provider/provider.dart';
class authwrap extends StatelessWidget {
  const authwrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<TheUser?>(context);
    if(user == null)
    //return home or login
    return Authenticate();
    else{
      return userhome();
    }
  }
}
