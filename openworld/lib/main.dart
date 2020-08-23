import 'package:flutter/material.dart';
import 'Signup/signuppage.dart';
import 'homepage.dart';

var assetImage = AssetImage('assets/openworld.png');
var image = Image(image: assetImage);


void main() {
runApp(MyApp());

}
class MyApp extends StatelessWidget {
   final String title ="OpenWorld";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: Home()
     );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      routes: <String, WidgetBuilder> {
        '/landingpage': (BuildContext context)=> new MyApp()
      },
    );
  }
}
class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
    resizeToAvoidBottomPadding: false,
    appBar: AppBar(
    backgroundColor: Colors.black,
    title: Text(''),
  ),
  body: SafeArea(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image(
          height: 150.0,
          width: 270.0,
          image: AssetImage('assets/openworld.png'),
        ),
        Text( //Log in text style
          'Log in to OpenWorld', style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.normal, color: Colors.white),
        ),
        SizedBox(
          height: 1.0,
          child: Divider(
            color: Colors.black,
          ),
        ),
      Card(  //EmailBox
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0,),
      child: ListTile(
        leading: Icon(
            Icons.email,
            size: 30.0,
            color: Colors.black,
        ),
        title: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Email', hintStyle: TextStyle(fontSize: 16.0, color: Colors.black38, fontWeight: FontWeight.bold,),
          ),
        ),
      ) 
    ),
      Card(  //PasswordBox
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0,),
        child: ListTile(
          leading: Icon(
              Icons.lock,
              size: 30.0,
              color: Colors.black,
          ),
          title: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Password', hintStyle: TextStyle(fontSize: 16.0, color: Colors.black38, fontWeight: FontWeight.bold,)
            ),
            obscureText: true,
          ),
        ),
      ),
    RaisedButton(
      onPressed: () {
        Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => MyHomePage(),
        ));
      },
      child: Text(
          'Sign In', style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        ),
    Card(
        child: RaisedButton(
        color: Colors.black,
      onPressed: () {
      Navigator.push(
      context,
      MaterialPageRoute(
    builder: (BuildContext context) => Signup(),
      ));
      },
      child: Text(
          "Don't have an account?" '  Sign Up', style: TextStyle(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        ),
      color: Colors.black,
    ),
      SizedBox(
          height: 100.0,
          child: Divider(
          color: Colors.black,
          ),
            ),
          ],
        ),
      ),
    );
  }
}


