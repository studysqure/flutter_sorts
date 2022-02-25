import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> LLoginScreen();

}

class LLoginScreen extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    final emailField = Expanded(
        child: TextField(
          style: TextStyle(fontSize: 20.0),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0,20.0,15.0),
              hintText: "Mobile Number",
              border: OutlineInputBorder(borderRadius:BorderRadius.circular(32.0))),

        )

    );
    final passwordField = Expanded(
        child:TextField(
            obscureText: true,
            style: TextStyle(fontSize: 20.0),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0))
            )
        )
    );
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0 , 15.0, 20.0, 15.0),
        onPressed: () {
          Fluttertoast.showToast(
              msg: "This is a Toast message",  // message
              toastLength: Toast.LENGTH_SHORT, // length
              gravity: ToastGravity.CENTER,    // location
              timeInSecForIosWeb: 1               // duration
          );
        },
        child: Text("Login"
        ,textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
          fontWeight: FontWeight.bold),
        ),)
      );
   return SingleChildScrollView(
     child: Center(
       child: Container(
         height: MediaQuery.of(context).size.height/1.5,
         child: Padding(
           padding: const EdgeInsets.all(36.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment : MainAxisAlignment.center,
             children: <Widget>[
             SizedBox(height: 48.0),
               emailField,
               SizedBox(height: 24.0,),
               passwordField,
               SizedBox(
                 height: 36.0,
               ),
               loginButton,
               SizedBox(
                 height: 16.0,
               )
             ],
           ),
         ),
       ),
     ),
   );

  }

}