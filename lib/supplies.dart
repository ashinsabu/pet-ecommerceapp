import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petecommerce/common%20ui.dart';
import 'package:petecommerce/services/auth.dart';
import 'colors.dart';
import 'petdata.dart';
import 'categories.dart';
import 'widget.dart';
class supplies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Supplies for your pet",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
        backgroundColor: AppColor.lightfawn,
        elevation: 4,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 3),
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () async {},
              )
          ),
        ],
      ),
      drawer: sidedrawer(),
      body:
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
            children: [
              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network(
                  'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2019/05/03122033/Untitled-design-4.jpg',
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
              Text('Pet Toys and Accessories',style: TextStyle(
                color: Colors.grey[800],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
              Text('Price: Rs. 2300/-', style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,),),
              FlatButton(
                child: Text("Add to Cart",style: TextStyle(color: AppColor.coffee),),
                onPressed: (){},
              ),
              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network(
                  'https://rukminim1.flixcart.com/image/612/612/kjlrb0w0-0/pet-food/v/1/j/3-dog-8906002487745-pedigree-original-imafz5yykqexxygz.jpeg?q=70',
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
              Text('Pedigree Dog Food(3kg)',style: TextStyle(
                color: Colors.grey[800],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
              Text('Price: Rs. 599/-', style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,),),
              FlatButton(
                child: Text("Add to Cart",style: TextStyle(color: AppColor.coffee),),
                onPressed: (){},
              ),
              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network(
                  'https://ae01.alicdn.com/kf/HLB1WO5dX2fsK1RjSszbq6AqBXXaN/Long-Plush-Super-Soft-Pet-Bed-Kennel-Dog-Round-Cat-Winter-Warm-Sleeping-Bag-Puppy-Cushion.jpg_Q90.jpg_.webp',
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
              Text('Long Plush Soft Cat Bed',style: TextStyle(
                color: Colors.grey[800],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
              Text('Price: Rs. 2700/-', style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,),),
              FlatButton(
                child: Text("Add to Cart",style: TextStyle(color: AppColor.coffee),),
                onPressed: (){},
              ),
              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network(
                  'https://m.media-amazon.com/images/I/61M45raAY5S._SL1200_.jpg',
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
              Text('Set of 13 toys',style: TextStyle(
                color: Colors.grey[800],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
              Text('Price: Rs. 799/-', style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,),),
              FlatButton(
                child: Text("Add to Cart",style: TextStyle(color: AppColor.coffee),),
                onPressed: (){},
              ),

        Padding(
        padding: EdgeInsets.only(left: 16, right: 8,bottom: 8,top: 24),
        child: Text(
          "Adopt a pet from one of our partnered shelters and receive a 5% discount on supplies.",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
    ),

    ],),
      ),
    );
  }
}
