import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text("ChatApp"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.group)),
              Tab(text: "Chats"),
              Tab(text: "Updates"),
              Tab(text: "Calls"),
            ],
          ),
        ),
        body: TabBarView(
          children: [GroupsSCR(), ChatsSCR(), UpdatesSCR(), CallsSCR()],
        ),
      ),
    );
  }
}

class GroupsSCR extends StatelessWidget {
  const GroupsSCR({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Groups Screen")));
  }
}

class ChatsSCR extends StatelessWidget {
  const ChatsSCR({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(child: Text(index.toString()),),
              title: Text("Person Name"),
              subtitle: Text("Message Preview..."),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("11:26 AM"),
                  SizedBox(height: 5,),
                  Icon(Icons.push_pin)
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class UpdatesSCR extends StatelessWidget {
  const UpdatesSCR({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Updates Screen")));
  }
}

class CallsSCR extends StatelessWidget {
  const CallsSCR({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Calls Screen")));
  }
}
