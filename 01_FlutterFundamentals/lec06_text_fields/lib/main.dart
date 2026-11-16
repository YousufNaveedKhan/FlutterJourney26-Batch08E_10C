import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lec06")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 400,
            width: 450,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: const Color.fromARGB(137, 225, 224, 224)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login Form",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        focusColor: Colors.deepOrange,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(26))
                        ),
                        prefixIcon: Icon(Icons.mail),
                        suffixIcon: Icon(Icons.visibility),
                        hint: Text("Enter your email")
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility),
                        hint: Text("Enter your password")
                      ),
                      obscureText: true, 
                      obscuringCharacter: "#",
                    ),
                  ),
                  Text("Forgot Password", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  ElevatedButton(onPressed: () {}, child: Text("Login"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
