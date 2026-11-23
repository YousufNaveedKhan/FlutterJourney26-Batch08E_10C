import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => First()),
                );
              },
              child: Text("ListView"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Second()),
                );
              },
              child: Text("ListView Builder"),
            ),
          ],
        ),
      ),
    );
  }
}

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ElevatedButton(onPressed: () {}, child: Text("Text")),
          Text("Aasiya"),
          ElevatedButton(onPressed: () {}, child: Text("Text1")),
          ElevatedButton(onPressed: () {}, child: Text("Text2")),
          ElevatedButton(onPressed: () {}, child: Text("Text3")),
          ElevatedButton(onPressed: () {}, child: Text("Text4")),
        ],
      ),
    );
  }
}

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text("1"),),
            title: Text("Item"),
            subtitle: Text("Subtitle"),
            trailing: Text("Trailing"),

          );
        },
      ),
    );
  }
}
