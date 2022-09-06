import 'package:flutter/material.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Column(children: <Widget>[
          Container(
              height: height / 2,
              width: double.infinity,
              child: Image.asset('assets/img.jpeg')),
          Column(children: <Widget>[
            Text("India's #1 Food Delivery",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            Text("and Dining App",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
          ]),
          SizedBox(height: 5),
          Row(
            children: [
              Container(width: width / 3, child: Divider(thickness: 2)),
              Text("Log in or sign up", style: TextStyle(color: Colors.grey)),
              Container(width: width / 3, child: Divider(thickness: 2)),
            ],
          ),
          SizedBox(height: 30),
          Container(
            width: width / 2,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Phone Number',
              ),
            ),
          ),
          Container(
              //color: Colors.pink,
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 100,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                  onPressed: () {},
                  child: Text("Continue"))),
          Row(
            children: [
              Container(width: width / 2.2, child: Divider(thickness: 2)),
              Text("Or", style: TextStyle(color: Colors.grey)),
              Container(width: width / 2.2, child: Divider(thickness: 2)),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            GestureDetector(
              child: Container(

                  // margin: EdgeInsets.all(100.0),
                  child: Image.asset('assets/google.png'),
                  //margin: EdgeInsets.all(40.0),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 24, 19, 11),
                      shape: BoxShape.circle)),
            ),
            GestureDetector(
              child: Container(
                  height: 50,
                  child: Image.asset('assets/dot.png'),
                  //margin: EdgeInsets.all(100.0),
                  decoration: BoxDecoration(
                      color: Colors.orange, shape: BoxShape.circle)),
            ),
          ]),
          SizedBox(height: 4),
          Text('By continuing , you agree to our ',
              style: TextStyle(color: Colors.grey, fontSize: 12)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text(
              'Terms of Service',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                decoration: TextDecoration.underline,
              ),
            ),
            Text(
              'Privacy policy',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                decoration: TextDecoration.underline,
              ),
            ),
            Text(
              'Privacy policy',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                decoration: TextDecoration.underline,
              ),
            ),
          ])
        ]),
      ),
    );
  }
}
