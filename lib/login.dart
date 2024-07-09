import 'package:flutter/material.dart';
import 'package:ecp/sign up.dart';
void main(){
  runApp(login());
}
class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false ,
      home: Scaffold(
        body: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFE1BEE7),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.only(top: 150.0,left: 20.0,right: 20.0),
              child:Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 3.0, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  color:Colors.white,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF7A288A),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Icon(
                        Icons.person,
                        color: Color(0xFF7A288A),
                        size: 60.0,
                      ),
                      SizedBox(height: 20.0),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!value.contains('@')) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Enter Password',
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 30.0 ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF7A288A), // Background color
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Process login
                            print('Login successful!');
                          }

                        },
                        child: Text('LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                      ),
                      SizedBox(height: 30.0),
                      Row(
                        children: [
                          Text('Dont have an account!'),
                          SizedBox(width: 20.0,),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF7A288A), // Background color
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context)=>SignUpForm()));
                            },
                            child: Text('Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                            ),),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}