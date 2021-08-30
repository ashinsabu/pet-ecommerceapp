import 'package:flutter/material.dart';
import 'package:petecommerce/common%20ui.dart';
import 'colors.dart';
import 'petdata.dart';
class userhome extends StatefulWidget {

  @override
  _userhomeState createState() => _userhomeState();
}

class _userhomeState extends State<userhome> {

  List<Pet> pets =getPetList();//temp before adding backend
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
        backgroundColor: AppColor.brownsugar,
      ),
      drawer: sidedrawer(),
    );
  }
}
