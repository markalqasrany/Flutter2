import 'package:flutter/material.dart';
import 'main.dart';
import 'profile.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'HomePage', style: TextStyle(color: Colors.white, fontSize: 19.5,),
        ),
        backgroundColor: Colors.black
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text('Menu', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.arrow_back, color: Colors.black, size: 35.0,),
                onTap: () {
                  Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => MyHomePage()),
                   );
                },
              ),
              ListTile(
                title: Text('Home Page', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
                ),
                trailing: Icon(Icons.home, color: Colors.black, size: 35.0,),
                onTap: () { 
                 Navigator.push(
                 context,
                  MaterialPageRoute(
                  builder: (BuildContext context) => MyHomePage(),
                ));
                },
              ),
              ListTile(
                title: Text('Profile', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
                ),
                trailing: Icon(Icons.account_circle, color: Colors.black, size: 35.0,),
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (BuildContext context) => Profile()),
                    );
                },
              ),   
              ListTile(
                title: Text('Messages', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
                ),
                trailing: Icon(Icons.chat, color: Colors.black, size: 35.0,),
              ),
              ListTile(
                title: Text('Friends', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
                ),
                trailing: Icon(Icons.supervisor_account, color: Colors.black, size: 35.0,),
              ),  
              ListTile(
                title: Text('Apps', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
                ),
                trailing: Icon(Icons.apps, color: Colors.black, size: 35.0,),
              ),   
              ListTile(
                title: Text('Log out', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
                ),
                trailing: Icon(Icons.mood_bad, color: Colors.black, size: 35.0,),
                onTap: () { 
                 Navigator.push(
                 context,
                  MaterialPageRoute(
                  builder: (BuildContext context) => Home(),
                ));
                },
              ),    
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text('Working on it.', style: TextStyle(fontSize: 25.0, color: Colors.black,),
              ),
            ),
          ],
        ),
    );
  }
}