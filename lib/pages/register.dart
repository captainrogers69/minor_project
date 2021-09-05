import 'package:flutter/material.dart';
import 'package:minor_project/pages/login.dart';


// ignore: camel_case_types
class register extends StatefulWidget {
  const register({ Key key }) : super(key: key);

  @override
  _registerState createState() => _registerState();
}

// ignore: camel_case_types
class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register with Us'),
      ),
      body: Stack(
        children: <Widget>[
        Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                image: AssetImage('lib/img/backg11.jpeg'),
                fit: BoxFit.cover
                ),
              ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 35.0,),
                    CircleAvatar(
                      radius: 80.0,
                      backgroundImage: AssetImage('lib/img/register.jpeg'),
                    ),
                    SizedBox(height: 20.0,),
                    Column(
                      children: [
                        Text("Create Account",style: TextStyle(fontSize: 28.0,fontFamily: 'JosefinSans',fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.0),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: Colors.orange, width: 2),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        labelText: "Username",
                        labelStyle: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 20,
                            //fontStyle: FontStyle.bold
                            ),
                      ),
                      maxLength: 14,
                  ),
                    ),
                    SizedBox(height: 1.0),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: Colors.orange, width: 2),
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        labelText: "your email address",
                        labelStyle: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 20,
                            //fontStyle: FontStyle.bold
                            ),
                      ),
                      maxLength: 30,
                  ),
                    ),
                    SizedBox(height: 1.0),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: 
                      TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: Colors.orange, width: 2),
                        ),
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.black,
                        ),
                        labelText: "Create a Password",
                        labelStyle: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 20,
                            //fontStyle: FontStyle.bold
                            ),
                      ),
                      maxLength: 20,
                  ),
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      buttonColor: Colors.redAccent,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> login()));
                        },
                        child: Text('Create your Project account', style: TextStyle(color: Colors.white),),
                      ),
                    )
                  ],
                ),
              )
        ]
      ),
    );
  }
}