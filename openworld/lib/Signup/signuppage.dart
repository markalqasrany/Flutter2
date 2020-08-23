import 'package:flutter/material.dart';
import 'confirmation.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Sign Up',
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
             child: Center(
              child: Text('Create your account', style: TextStyle(backgroundColor: Colors.black, color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold,),
              ),
            ),
            ),
            Card(  //Username
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0,),
                  child: ListTile(
                    leading: Icon(
                        Icons.people,
                        size: 30.0,
                        color: Colors.black,
                    ),
                    title: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Name', hintStyle: TextStyle(fontSize: 16.0, color: Colors.black38, fontWeight: FontWeight.bold,),
                      ),
                    ),
                  ) 
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
                        hintText: 'Re-type password', hintStyle: TextStyle(fontSize: 16.0, color: Colors.black38, fontWeight: FontWeight.bold,)
                      ),
                      obscureText: true,
                    ),
                  ),
                ),
            Card(  //Phonenumber
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0,),
                  child: ListTile(
                    leading: Icon(
                        Icons.phone_android,
                        size: 30.0,
                        color: Colors.black,
                    ),
                    title: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Phonenumber', hintStyle: TextStyle(fontSize: 16.0, color: Colors.black38, fontWeight: FontWeight.bold,),
                      ),
                    ),
                  ) 
                ), 
            RaisedButton(
             onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Confirmation(),
              ));
              },
              child: Text(
              'Sign Up', style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
               ),
             ),
            Card(
              child: Text(
                'Join our new Social Newtwork today!', style: TextStyle(backgroundColor: Colors.black, color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}