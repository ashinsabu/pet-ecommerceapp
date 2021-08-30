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
class  vets extends StatelessWidget {
  const vets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    centerTitle: true,
title: Text("Find a Vet",
style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
backgroundColor: AppColor.lightfawn,
elevation: 4,
),
drawer: sidedrawer(),backgroundColor: AppColor.palespring,
      body:
      Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16, right: 8,bottom: 8,top: 24),
            child: Text(
              "You have not purchased any pet !",
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
              "We cannot recommend specialized vets. But check below to contact general vets.",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
              ),
            ),
          ),

          Divider(height: 20,thickness: 3,),
          Container(
            height: 540,
            margin: EdgeInsets.only(bottom: 16),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                buildVet("assets/images/vets/vet_2.png", "Big Lake Vet Hospital", "+91 89723887123"),
                buildVet("assets/images/vets/vet_0.png", "Animal Emergency Hospital", "+91 72837182973"),
                buildVet("assets/images/vets/vet_1.png", "Artemis Veterinary Center", "+91 81928371289"),
                buildVet("assets/images/vets/vet_3.png", "Veterinary Medical Center", "+91 98123971237"),
                buildVet("assets/images/vets/vet_2.png", "Dr Nagarjuna's Vet Clinic", "+91 8812231237"),
                buildVet("assets/images/vets/vet_0.png", "Dr Shankar Vet Clinic", "+91 9249272711"),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
Widget buildVet(String imageUrl, String name, String phone){
  return Container(
    margin: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 4),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ),
      border: Border.all(
        width: 1,
        color: Colors.grey.shade300,
      ),
    ),
    child: Row(
      children: [

        Container(
          height: 98,
          width: 98,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.contain,
            ),
          ),
        ),

        SizedBox(
          width: 16,
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              name,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 8,
            ),

            Row(
              children: [

                Icon(
                  Icons.phone,
                  color: Colors.grey[800],
                  size: 18,
                ),

                SizedBox(
                  width: 8,
                ),

                Text(
                  phone,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),

            SizedBox(
              height: 8,
            ),

            Container(
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                "OPEN - 24/7",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),

          ],
        ),

      ],
    ),
  );
}
