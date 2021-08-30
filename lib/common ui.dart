import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:petecommerce/colors.dart';
import 'home.dart';
import 'stray.dart';

class sidedrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
          child:
          ListView(padding: EdgeInsets.zero,

              children: <Widget>[
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: AppColor.lightcoffee,
                  ),
                    accountName: Text("Ashin Sabu",style: TextStyle(color: Colors.black,fontSize: 22),),
                  accountEmail: Text("Owns pet: No", style: TextStyle(color: Colors.black54,fontSize: 16),),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: AppColor.cornsilk,
                    child: Text("A",style: TextStyle(fontSize: 40,color: Colors.blueGrey),),
                  ),
                ),
                ListTile(
                  title: Text('Home'),
                  onTap: (){
                    Navigator.pop(context);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>userhome()));
                  },
                ),
                ListTile(
                  title: Text('Adopt a stray'),
                  onTap: (){
                    Navigator.pop(context);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>stray()));
                  },
                ),
                ListTile(
                  title: Text('Vets for my pet'),
                  onTap: (){
                    Navigator.pop(context);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>vets()));
                  },
                ),
                ListTile(
                  title: Text('Pet supplies (WIP)'),
                  onTap: (){
                    Navigator.pop(context);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>vets()));
                  },
                ),
                ListTile(

                  title: Text('Exit'),
                  onTap: (){
                    SystemNavigator.pop();
                  },
                )
              ])),
    );
  }
}
