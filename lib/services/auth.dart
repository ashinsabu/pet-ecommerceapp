import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:petecommerce/models/user.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;//instance of firebase auth class
  //create user object based on firebaseuser
  TheUser? _userfromFirebaseUser(User? user){
    return user !=null? TheUser(uid: user.uid):null;
  }
  // auth change user stream
  Stream<TheUser?> get user{
    return  _auth.authStateChanges()
        // .map((User? user) =>_userfromFirebaseUser(user));  //samefunctionality as the below part
    .map(_userfromFirebaseUser);
  }
  //sign in anon'
Future signInAnon() async{
  await Firebase.initializeApp();

  try{
    UserCredential result = await _auth.signInAnonymously();
    User? user = result.user;
    return _userfromFirebaseUser(user);
  }
  catch(e){
    print(e.toString());
    return null;
  }
}
  //sign in email pass
  Future signInWithEmailAndPassword(String email, String password) async{
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userfromFirebaseUser(user);
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
  //register

  //signout
  Future signOut() async{
    try{
      return await _auth.signOut();
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }

}