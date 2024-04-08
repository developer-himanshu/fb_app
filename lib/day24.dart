// ignore_for_file: prefer_const_constructors

import 'package:fbapp/functions/auth.dart';
import 'package:flutter/material.dart';

class Day24Authentication extends StatefulWidget {
  const Day24Authentication({super.key});

  @override
  State<Day24Authentication> createState() => _Day24AuthenticationState();
}

class _Day24AuthenticationState extends State<Day24Authentication> {
  final _formkey = GlobalKey<FormState>();
  bool isLogin=false;
  String email='';
  String password='';
  String username='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Email/Pass Auth'),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogin?   TextFormField(
             key: ValueKey('username'),
                decoration: InputDecoration(hintText: "Enter Username"),
                validator:(value){
                  if(value.toString().length<3){
                    return 'username is small';
                  }
                  else{
                 return null;
                  }
                } ,
                onSaved: (value){
                  setState(() {
                    username=value!;
                  });
                },
              ):Container(),
              
              TextFormField(
                key: ValueKey('email'),
                decoration: InputDecoration(hintText: "Enter Email"),   validator:(value){
                  if(!(value.toString().contains('@'))){
                    return 'invalid email';
                  }
                  else{
                 return null;
                  }
                } ,
                onSaved: (value){
                  setState(() {
                    email=value!;
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                key:ValueKey('password'),
                decoration: InputDecoration(hintText: "Enter a Password"),  
                 validator:(value){
                  if(value.toString().length<6){
                    return 'password is small';
                  }
                  else{
                 return null;
                  }
                } ,
                onSaved: (value){
                  setState(() {
                    password=value!;
                  });
                },
              ),
              SizedBox(height: 15,),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(onPressed:(){
                  if(_formkey.currentState!.validate()){
_formkey.currentState!.save();
                  signup(email, password);
                  }
                }, 
                child: isLogin? Text("Login") : Text('Signup'))),
                SizedBox(height: 10,),
                TextButton(
                  onPressed: (){
                    setState(() {
                      isLogin=!isLogin;
                    });
                  },
                 child: isLogin
                 ?Text("Don't have an account? Signup")
                 :Text('Already Signed Up ? Login')
                 )
            ],
          ),
        ),
      ),
    );
  }
}
