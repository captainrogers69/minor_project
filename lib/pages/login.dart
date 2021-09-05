import 'package:flutter/material.dart';
import 'package:minor_project/pages/dashboard.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({ Key key }) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {

  bool hidepassword= true;                                      //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to your Account'),
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
                    SizedBox(height: 50.0,),
                    CircleAvatar(
                      radius: 80.0,
                      backgroundImage: AssetImage('lib/img/letsgo.jpeg')
                    ),
                    SizedBox(height: 20.0,),
                    Column(
                      children: [
                        Text("Log in",style: TextStyle(fontSize: 32,fontFamily: 'JosefinSans',fontWeight: FontWeight.bold,
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
                        labelText: "Enter your Username",
                        labelStyle: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 20,
                            //fontStyle: FontStyle.bold
                            ),
                      ),
                      maxLength: 14,
                  ),
                    ),
                    SizedBox(height: 5.0),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: TextField(
                        /*onChanged: (value2){
                          global.password=value2;
                        },*/
                        obscureText: hidepassword,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: _togglePasswordView,
                          child: Icon(Icons.visibility),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: Colors.orange, width: 2),
                        ),
                        prefixIcon: Icon(
                          Icons.password_outlined,
                          color: Colors.black,
                        ),
                        labelText: "Enter your Password",
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
                      minWidth: 150.0,
                      buttonColor: Colors.redAccent,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> dashboard()));
                        },
                        child: Text('Log in', style: TextStyle(color: Colors.white),),
                      ),
                    )
                  ],
                ),
              )
        ]
      ),
    );
  }
  void _togglePasswordView(){
  hidepassword = !hidepassword;
  setState(() {});
}
}

