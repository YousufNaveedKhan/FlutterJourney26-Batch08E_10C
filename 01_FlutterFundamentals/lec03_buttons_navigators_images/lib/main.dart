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

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // height: 200,
          // width: 200,
          // color: Colors.red,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
            child: Text("Go to next screen"),
          ),
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("background.jpg", height: 80, width: 150,),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaFeioPLnEOiRJqeXk9mWZsfINuCow3ipsvFW3GBggpA&s=10", height: 80, width: 150),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go back"),
            ),
          ],
        ),
      ),
    );
  }
}
