import 'package:flutter/material.dart';
import 'package:minor_project/global.dart' as globalData;
// ignore: import_of_legacy_library_into_null_safe
import 'package:razorpay_flutter/razorpay_flutter.dart';

class dashboard extends StatefulWidget {
  const dashboard({ Key? key }) : super(key: key);

  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
 late Razorpay _razorpay;
 @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DashBoard')
      ),
      body: _bodyWidget(),
      
    );
  }

Widget _bodyWidget() {
  return Stack(
        children: <Widget>[
        Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                image: AssetImage('lib/img/backg11.jpeg'),
                fit: BoxFit.cover
                ),
              ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 5.0),
                      Container(
                      height: 39.0,
                      width: 280.0,
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.white,
                      child: Center(
                        child: Text("Hello "+globalData.username, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent),)
                        )
                ),
                SizedBox(height: 15,),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 180.0,
                      backgroundImage: AssetImage('lib/img/rog5.jpg'),
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                      height: 20,
                      width: 250,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Center(
                          child: Text('Asus Rog Phone 5', style: TextStyle(fontWeight: FontWeight.bold),)
                          ),
                      )
                      ),
                    SizedBox(height: 5.0,),
                    Container(
                      height: 20,
                      width: 250,
                      color: Colors.white,
                      child: Center(
                        child: Text('Game Changing Life-Like Visuals', style: TextStyle(fontWeight: FontWeight.bold),)
                        )
                      ),
                    SizedBox(height: 10.0,),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 30.0,
                      buttonColor: Colors.redAccent,
                      child: RaisedButton(
                        child: Text('Buy Now', style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        onPressed: (){
                          payNow();
                        },
                      )
                      )
                  ],
                )
                    ],
                  ),
                ),
              ),
        ]
      );     
  }
  
  void _handlePaymentSuccess(PaymentSuccessResponse response) {
  // Do something when payment succeeds
}

  void _handlePaymentError(PaymentFailureResponse response) {
  // Do something when payment fails
}

  void _handleExternalWallet(ExternalWalletResponse response) {
  // Do something when an external wallet is selected
}

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
    _razorpay.clear();
  }

  void payNow() {

    var options = {
      'key': 'rzp_test_8NBNETBLt7d5Bg',
      'amount': 50000, //in the smallest currency sub-unit.
      'name': 'Asus Rog Phone 5',
      
      'description': 'Best Gaming Mobile',
      'timeout': 60, // in seconds
      'prefill': {
      'contact': '8979642723',
      'email': 'myyadavmayank1998@gmail.com'}
};
_razorpay.open(options);
  }
}