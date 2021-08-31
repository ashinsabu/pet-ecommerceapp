import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petecommerce/authwrap.dart';
import 'package:petecommerce/login%20page.dart';
import 'package:petecommerce/models/user.dart';
import 'package:petecommerce/services/auth.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'package:path_provider/path_provider.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<TheUser?>.value(
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        title: "Home",
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.montserratTextTheme(),
        ),
        home: authwrap(),
        debugShowCheckedModeBanner: false,

      ),
    );
  }
}

