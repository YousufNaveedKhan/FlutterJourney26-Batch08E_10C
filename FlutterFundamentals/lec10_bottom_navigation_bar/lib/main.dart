import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatHome(),
    );
  }
}

class ChatHome extends StatefulWidget {
  const ChatHome({super.key});

  @override
  State<ChatHome> createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  int selectedIndex = 0;
  final List<Map<String, dynamic>> chats = [
    {
      "name": "Sameed Younus Mughal",
      "message": "Bhaya, Notes bhejdo yarrr... 🙂",
      "time": "5:15 PM",
      "unread": 2,
      "color": Colors.teal,
    },
    {
      "name": "Umer Siddique",
      "message": "Assalam Walaikum",
      "time": "9:45 PM",
      "unread": 3,
      "color": Colors.orange,
    },
    {
      "name": "Riba Suleman",
      "message": "Kal class hogi ya nahin??",
      "time": "11:00 AM",
      "unread": 0,
      "color": Colors.deepPurple,
    },
    {
      "name": "Alishba Mustaqeem",
      "message": "Meine assignment submit krdya hai...!",
      "time": "Yesterday",
      "unread": 0,
      "color": Colors.pink,
    },
    {
      "name": "Hassan Absar",
      "message": "Jazakallah o khairan kaseeran.. ♥",
      "time": "Monday",
      "unread": 1,
      "color": Colors.pink,
    },
  ];

  final List<String> pages = ["Chats", "Updates", "Communities", "Calls"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.white,
        actions: const [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 20),
          Icon(Icons.search),
          SizedBox(width: 15),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: selectedIndex == 0
          ? ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                final chat = chats[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: chat["color"],
                    child: Text(
                      chat["name"][0],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text(
                    chat["name"],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(chat["message"]),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(chat["time"], style: TextStyle(fontSize: 11)),
                      if (chat["unread"] > 0)
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          child: Text(
                            "${chat["unread"]}",
                            style: const TextStyle(fontSize: 11),
                          ),
                        ),
                    ],
                  ),
                );
              },
            )
          : Center(child: Text(pages[selectedIndex], style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.white,
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,

        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_outlined),
            label: "Updates",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Communities",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
      ),
    );
  }
}
