class Student {
  String name;
  int rollNo;
  double marks;

  Student(this.name, this.rollNo, this.marks);

  String showInfo() {
    return 'Name: $name || RollNo: $rollNo || Marks: $marks';
  }

  bool isPass() => marks >= 50;

  String grade() {
    if (marks >= 80) return "A";
    if (marks >= 50) return "B";
    return "F";
  }
}

// class Register {
//   String firstName;
//   String lastName;
//   String email;
//   String pass;
//   String cPass;

//   Register(this.firstName, this.lastName, this.email, this.pass, this.cPass);

//   register_user() {
//     if (firstName == "" &&
//         lastName == "" &&
//         email == "" &&
//         pass == "" &&
//         cPass == "") {
//       if (cPass == pass) {
//         var q = "INSERT INTO users (Firstname, Lastname, Email, Password) VALUES ()";

//       } else {
//         print("Password's doesn't match!");
//       }
//     } else {
//       print("Fill all required fields!");
//     }
//   }
// }

void main() {
  var s1 = new Student('Ali', 5001, 55);
  var s1Info = s1.showInfo();
  print(s1Info);

  s1.marks = 45;

  print('Ali k naye marks yeh hain: ${s1.marks} | Pass? ${s1.isPass()}');
  var s1Grade = s1.grade();
  print(s1Grade);
}
