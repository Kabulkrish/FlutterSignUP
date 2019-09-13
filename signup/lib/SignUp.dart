import 'package:flutter/material.dart';
import 'HomePage.dart';
class SignUpPage extends StatefulWidget  {
@override
   _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String name,phone,mail;

 GlobalKey<FormState> _key = new GlobalKey();
   bool autovalidate=false;
   

  String password;

  // Toggles the password show status
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child:
         Form(key: _key,
          child:  Column(mainAxisAlignment: MainAxisAlignment.end,
            
              children: <Widget>[
                Image(
                  image: AssetImage(
                    "images/logo.png"
                  ),
                  width: 250.0,
                  height: 250.0,
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextFormField(
                    
                    textCapitalization: TextCapitalization.sentences,
                     maxLength: 15,
                    validator: (input){
                      if(input.isEmpty){
                        return "Enter Name";
                      }
                      
                    },
                    decoration: InputDecoration(border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, width: 200.0),
                    ),labelText: "Name",labelStyle: TextStyle(color: Colors.white)),
                    onSaved:(input)=>name=input ,
                  ),
                ),

                ListTile(
                  leading: Icon(Icons.mail),
                  title: TextFormField(
                    validator: (input){
                      if(input.isEmpty){
                        return "Enter Mail Id";
                      }
                      
                    },
                    decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Mail",labelStyle: TextStyle(color: Colors.white)),
                    onSaved:(input)=>mail=input ,

                  ),
                ),



                ListTile(
                  leading: Icon(Icons.phone_android),
                  title: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (input){
                      if(input.isEmpty){
                        return "Enter Mobile number";
                      }
                      
                    },
                    decoration: InputDecoration(border: OutlineInputBorder(),labelText: "MobileNumber",labelStyle: TextStyle(color: Colors.white)),
                    onSaved:(input)=>phone=input ,

                  ),
                ),


                ListTile(
                  leading: Icon(Icons.security),
                  title: TextFormField(
                    obscureText: true,
                    
                       validator: (input) => input.length < 6 ? 'Password too short.' : null,
                      
                    
                    decoration: InputDecoration(labelText: "Password",labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder()),
                    onSaved:(input)=>password=input ,
                   
                  ),
                ),

                RaisedButton(
                  onPressed: _sendtonextPage,

                   splashColor: Colors.redAccent,
                  shape: StadiumBorder(

                  ),
                  child: Text("Submit"),
                  
                )
              ],
              
            ),
          ),
        ),
        
        

      

    );

       
  }
  _sendtonextPage(){

    if(_key.currentState.validate()){
      _key.currentState.save();
      Navigator.push(context,
       MaterialPageRoute(
        builder: (contex)=>HomePage(
          name:name,
          mail:mail,
         
          phone:phone,
          password:password,
        ))
      );
      
    }
    else {
      setState(() {
        autovalidate = true;
      });

       }
}}