import 'package:flutter/material.dart';
import 'colors.dart';
import 'common ui.dart';
import 'home.dart';

class stray extends StatelessWidget {
  const stray({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Adopt a stray",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
        backgroundColor: AppColor.lightfawn,
        elevation: 4,
      ),
      drawer: sidedrawer(),
      body:
      Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, right: 8,bottom: 8,top: 24),
              child: Text(
                "Adopt, Don’t Shop!",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Help your little companion by adopting!",
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Card(
                color: AppColor.palespring,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Divider(height: 5,),
                    ListTile(
                      leading: Icon(Icons.apartment_outlined),
                      title: Text('Rakshaa',style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Animal Enthusiast\nLast Updated: 9:36 AM, 27 Sept'),

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Text('Contact'),
                        IconButton(icon: Icon(Icons.phone), onPressed: (){})
                      ],
                    ),
                    Divider(height: 5,),
                  ],
                )

            ),
            Card(
                color: AppColor.cornsilk,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Divider(height: 5,),
                    ListTile(
                      leading: Icon(Icons.apartment_outlined),
                      title: Text('Manans Animal Shelter',style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Institutional Shelter\nLast Updated: 10:20 AM, 29 Sept'),

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Text('Contact'),
                        IconButton(icon: Icon(Icons.phone), onPressed: (){})
                      ],
                    ),
                    Divider(height: 5,),
                  ],
                )

            ),
            Card(
                color: AppColor.palespring,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Divider(height: 5,),
                    ListTile(
                      leading: Icon(Icons.apartment_outlined),
                      title: Text('Ashins Shelter',style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Institutional Shelter\nLast Updated: 4:06 PM, 30 Sept'),

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Text('Contact'),
                        IconButton(icon: Icon(Icons.phone), onPressed: (){})
                      ],
                    ),
                    Divider(height: 5,),
                  ],
                )

            ),
            Card(
                color: AppColor.cornsilk,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Divider(height: 5,),
                    ListTile(
                      leading: Icon(Icons.apartment_outlined),
                      title: Text('Shashwat',style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Animal Enthusiast\nLast Updated: 10:52 AM, 30 Sept'),

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Text('Contact'),
                        IconButton(icon: Icon(Icons.phone), onPressed: (){})
                      ],
                    ),
                    Divider(height: 5,),
                  ],
                )

            ),

          ]
      ),
    );
  }
}
