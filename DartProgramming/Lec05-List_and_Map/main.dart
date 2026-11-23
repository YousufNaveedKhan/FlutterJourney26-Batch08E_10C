void main() {
  final List<String> students = ["Hassan", "Fahad", "Ghina"];
  print(students);

  print(students[1]);

  for (var student in students) {
    print(student);
  }

  final Map<String, int> marks = {"Eng": 88, "Urdu": 100, "Islamiyat": 59};

  print(marks);

  print(marks["Islamiyat"]);

  marks.forEach((name, score) {
    print("Subject: ${name}  \nMarks: ${score}\n");
  });

  final Map<dynamic, dynamic> user = {
    "name": "Hassan",
    "age": 22,
    "email": "hassan@gmail.com",
    "isVerified": true,
  };

  user.forEach((field, value) {
    print("Field: ${field} \nValue: ${value}\n");
  });

  final List<Map<String, dynamic>> users = [
    {"id": 1, "name": "Riba", "age": 22, "email": "riba@gmail.com"},
    {"id": 2, "name": "Alishba", "age": 21, "email": "alishba@gmail.com"},
    {"id": 3, "name": "Ayesha", "age": 20, "email": "ayesha@gmail.com"},
  ];

  // print(users);
  for (var user in users) {
    user.forEach((field, value) {
      print("Field: ${field} \nValue: ${value}\n");
    });
  }
}
