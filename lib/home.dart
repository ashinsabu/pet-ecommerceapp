import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petecommerce/common%20ui.dart';
import 'package:petecommerce/services/auth.dart';
import 'colors.dart';
import 'petdata.dart';
import 'categories.dart';
import 'widget.dart';
//for future use
// import 'package:url_launcher/url_launcher.dart';
// import 'package:device_apps/device_apps.dart';
// import 'package:android_intent/android_intent.dart';


class userhome extends StatefulWidget {

  @override
  _userhomeState createState() => _userhomeState();
}

class _userhomeState extends State<userhome> {
  final AuthService _auth=AuthService();
  List<Pet> pets = getPetList(); //temp before adding backend
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Home",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
          backgroundColor: AppColor.lightfawn,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 3),
              child: IconButton(
                icon: Icon(Icons.logout),
                onPressed: () async {
                  await _auth.signOut();
                },
              )
            ),
          ],
          elevation: 4,
        ),
        drawer: sidedrawer(),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 8,bottom: 8,top: 24),
                    child: Text(
                      "Purchase Your",
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
                  "New Companion Here",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 24,
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey[100],
                    contentPadding: EdgeInsets.only(right: 30,),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 16.0, left: 24.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Newest Pet",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),

                    Icon(
                      Icons.more_horiz,
                      color: Colors.grey[800],
                    ),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 280,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    PetWidget(pet: pets[16], index: 16),
                    PetWidget(pet: pets[18], index: 18),
                    PetWidget(pet: pets[7], index: 7),
                    PetWidget(pet: pets[19], index: 9),
                    PetWidget(pet: pets[12], index: 12),
                    PetWidget(pet: pets[2], index: 2),
                  ],
                ),
              ),


              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Choose your animal",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),

                    Icon(
                      Icons.more_horiz_rounded,
                      color: Colors.grey[800],
                    ),

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildPetCategory(
                            Category.DOG, "340", Colors.red.shade200),
                        buildPetCategory(
                            Category.CAT, "210", Colors.blue.shade200),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildPetCategory(
                            Category.HAMSTER, "56", Colors.orange.shade200),

                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  "\n\n\nNOTE: Adopt instead of purchasing and avail 5% discount on all pet supplies.",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 18,
                  ),
                ),
              ),

            ],
          ),
        )
    );
  }

  Widget buildPetCategory(Category category, String total, Color color) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategoryList(category: category)),
          );
        },
        child: Container(
          height: 80,
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade200,
              width: 1,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            children: [

              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color.withOpacity(0.5),
                ),
                child: Center(
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      "assets/images/" + (category == Category.HAMSTER
                          ? "hamster"
                          : category == Category.CAT ? "cat" : "dog") + ".png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 12,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    category == Category.HAMSTER ? "Hamsters" : category ==
                        Category.CAT ? "Cats" : "Dogs",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    "Total of " + total,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
