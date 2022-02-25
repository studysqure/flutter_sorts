import 'package:flutter/material.dart';
import 'package:flutter_sorts/screens/statelesswidget.dart';
import 'package:flutter_sorts/screens/buttons_and_stateful_widgets.dart';
import 'package:flutter_sorts/screens/login_design.dart';

void main() {
  runApp(
      MaterialApp(
    //home: new Text("Cool")
        debugShowCheckedModeBanner: false,
      home:MyStatelessWidget()
    //     home: LoginPage(),
  ));
}

class MyStatelessWidget extends StatelessWidget {
  String? email;
   GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void validate(){
    if(formKey.currentState!.validate()){
      print("Vlaidated");
    }else{
      print("Not validated");
    }
  }
  @override
  Widget build(BuildContext context){
    //Scaffold provide functionality of appbar, body of app etc
    return  Scaffold(
        appBar:  AppBar(title:  Text("Stateless Widget")),
        backgroundColor: Colors.white,
        // body:  Str(),
      // body: LoginPage(),
    body:Padding(
      padding: const EdgeInsets.all(25.0),
      child: Center(
        child: Form(
          key:formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    labelText: "Email"
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return null;
                  }else{
                    return "Required";
                  }
                },
              ),
              const Padding(padding: EdgeInsets.only(top: 20.0)),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password"
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return null;
                  }else{
                    return "Required";
                  }
                },
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)
                ,child: RaisedButton(
                  onPressed: (){},
                  child: Text("Login"),
                ),
              )

            ],
          ),
        ),
      ),
    )

    );
}
}



