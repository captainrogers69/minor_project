
import 'package:flutter/material.dart';

class privacyandpolicy extends StatefulWidget {
  const privacyandpolicy({ Key? key }) : super(key: key);

  @override
  _privacyandpolicyState createState() => _privacyandpolicyState();
}

class _privacyandpolicyState extends State<privacyandpolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy And Policy'),
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
              Center(
                child: Column(
                  children: [
                    Container(
                    padding: const EdgeInsets.all(10.0),
                    color: Colors.white,
                    child: const Text('Privacy and Policy Page', style: TextStyle(fontWeight: FontWeight.bold),)
            ),
                  ],
                ),
              ),
        ]
      ),
    );
  }
}