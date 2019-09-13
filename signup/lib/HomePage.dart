import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {


  final String name,mail,phone,password;
  HomePage(
    {
    Key key, @override this.name,this.mail, this.phone,
    this.password })
    
    : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(backgroundColor: Colors.black,
  title: Text("User_Info"),),

  body: SingleChildScrollView(
    child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(50),
        
        ),
        Image(
                image: AssetImage("images/logo.png"),
                width: 100.0,
                height: 100.0,
              ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text(name),

        ),
         ListTile(
          leading: Icon(Icons.mail),
          title: Text(mail),

        ),
         ListTile(
          leading: Icon(Icons.phone),
          title: Text(phone),

        ),
         ListTile(
          leading: Icon(Icons.security),
          title: Text(password),

        ),
      ],
    ),
  ),

    );
  }
}