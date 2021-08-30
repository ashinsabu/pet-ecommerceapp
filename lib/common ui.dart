import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home.dart';


class sidedrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
          child:
          ListView(padding: EdgeInsets.zero,

              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xfffc1e70),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text( 'Ashin Sabu',style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
                ListTile(
                  title: Text('Home'),
                  onTap: (){
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
