import "dart:io"; // Library

void main() {
  var name = "Hassan";
  // if (nameOne == "Hassan" && nameTwo == "Hassan" && nameThree == "Alishba") {
  //   print("True");
  // } else {
  //   print("False");
  // }

  //   if (nameOne == "Irfan" || nameTwo == "Hassan" || nameThree == "Usman") {
  //   print("True");
  // } else {
  //   print("False");
  // }

  var subOne = 25;
  var subTwo = 24;
  var subThree = 29;

  var obtMarks = subOne + subTwo + subThree;
  var totalMarks = 300;
  var per = (obtMarks / totalMarks) * 100;

  print("-------------------------------------");
  print("--------------- RESULT --------------");
  print("-------------------------------------");

  print("Name: ${name}");
  print("SubOne: ${subOne}");
  print("SubTwo: ${subTwo}");
  print("SubThree: ${subThree}");

  print("Obtained Marks: ${obtMarks} / ${totalMarks}");
  print("Percentage: ${per}");

  // SIMPLE IF
  // if (name == "Abdullah") {
  //   print("Verified User");
  // }

  // SIMPLE IF ELSE
  if (per >= 40) {
    print("PASS");
  } else {
    print("FAIL");
  }

  // AND
  // LADDER IF ELSE
  var grade; // Initialization
  if (per >= 80) {
    grade = "A+"; // Declaration
  } else if (per < 80 && per >= 70) {
    grade = "A"; // Declaration
  } else if (per < 70 && per >= 60) {
    grade = "B"; // Declaration
  } else if (per < 60 && per >= 50) {
    grade = "C"; // Declaration
  } else if (per < 50 && per >= 40) {
    grade = "D"; // Declaration
  } else {
    grade = "F";
  }

  print("Grade: ${grade}");

  var myName = "Hassan"; // Declaration

  for (var i = 1; i <= 5; i++) {
    stdout.write(i);
    for (var j = 1; j <= 3; j++) {
      stdout.write(j);
    }

    print("");
  }

  var a = 1;
  while (a <= 10) {
    print(a);
    a++;
  }
  

  add(a, b) {
    return a + b;
  }

  var res = add(5, 3);
  print("Add: ${res}");
}
