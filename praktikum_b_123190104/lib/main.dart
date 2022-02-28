import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          title: Text("Login Screen"),
        ),
        body: Padding(
          padding: EdgeInsets.all(100),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 48.0),
                const FlutterLogo(
                  size : 40,
                ),

                SizedBox(height: 48.0),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration( hintText: 'Email',
                    contentPadding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                  ),
                ),

                SizedBox(height: 10.0),
                TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    contentPadding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                  ),
                ),

                SizedBox(height: 24.0),
              ElevatedButton(onPressed: () {}, child: const Text("Log In",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(2000, 40),
                ),
              ),

                TextButton(onPressed: () {}, child: Text("Forgot Password ?",style: TextStyle(color: Colors.black54))),
              ],
            ),

          ),
        ),
      ),

    );
  }
}
