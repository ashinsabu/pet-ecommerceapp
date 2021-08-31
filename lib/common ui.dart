import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:petecommerce/colors.dart';
import 'package:petecommerce/services/auth.dart';
import 'package:petecommerce/supplies.dart';
import 'home.dart';
import 'stray.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'services/auth.dart';


class sidedrawer extends StatelessWidget {
  final AuthService _auth = AuthService();
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
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: (){
                    Navigator.pop(context);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>userhome()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.house_siding),
                  title: Text('Adopt a stray'),
                  onTap: (){
                    Navigator.pop(context);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>stray()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.local_hospital),
                  title: Text('Vets for my pet'),
                  onTap: (){
                    Navigator.pop(context);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>vets()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.store),
                  title: Text('Pet supplies '),
                  onTap: (){
                    Navigator.pop(context);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>supplies()));
                  },
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.blue.shade50),
                  child: ListTile(
                    leading: Icon(Icons.view_in_ar),
                    title: Text('Play with your pet in AR*'),
                    onTap: () async{
                      await LaunchApp.openApp(
                        androidPackageName: 'com.grappsgames.ortk_play.treedanimalsar',
                        // openStore: false,
                      );
                    },
                  ),
                ),

                SizedBox(height: 155,),

                Container(
                  decoration: BoxDecoration(color: Colors.brown),
                  child: ListTile(

                    title: Text('Exit'),
                    onTap: (){
                      SystemNavigator.pop();
                    },
                  ),
                )
              ])),
    );
  }
}
