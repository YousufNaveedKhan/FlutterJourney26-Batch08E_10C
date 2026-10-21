// ================================================================
//   DART OOP — PART 1
//   Topics: Class, Object, Properties, Methods, Constructor, this
//
//   Run:  dart run oop_part1.dart
// ================================================================


// ----------------------------------------------------------------
// CLASS = naqsha (blueprint)
// OBJECT = us naqshe se bani asli cheez
// ----------------------------------------------------------------
class Student {
  // Properties (noun) — object ke paas KYA hai
  String name;
  int rollNo;
  double marks;

  // Constructor — object bante waqt chalta hai
  // this.name = "meri apni name property mein value daal do"
  Student(this.name, this.rollNo, this.marks);

  // Methods (verb) — object KYA KAR SAKTA hai
  String showInfo() {
    return 'Name: $name || RollNo: $rollNo || Marks: $marks';
  }

  // Ek line ka method (arrow function)
  bool isPass() => marks >= 50;

  String grade() {
    if (marks >= 80) return 'A';
    if (marks >= 50) return 'B';
    return 'F';
  }
}


void main() {
  // Object banana (Dart mein "new" likhna zaroori nahi)
  var s1 = Student('Ali', 5001, 55);
  var s2 = Student('Sara', 5002, 86);

  // Method call karna
  print(s1.showInfo());
  print(s2.showInfo());

  // Har object ka data alag hai
  print('Ali ka grade: ${s1.grade()} | Sara ka grade: ${s2.grade()}');

  // Object ki property change karna
  s1.marks = 45;
  print('Ali ke naye marks: ${s1.marks} | Pass? ${s1.isPass()} | Grade: ${s1.grade()}');
}


// ================================================================
//   PRACTICE
//   1. Student mein ek aur property "city" add karo aur showInfo() mein dikhao.
//   2. Ek "Product" class banao: name, price, quantity
//      aur totalPrice() method jo price × quantity return kare.
// ================================================================