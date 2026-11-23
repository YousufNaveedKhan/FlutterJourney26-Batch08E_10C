void main() {
  var name = "abc";
  print(name);

  if (name == "Riba") {
    print("Verified User");
  } else {
    print("Unverfied User");
  }

  var marks = 30;

  if (marks >= 40) {
    print("PASS");
  } else {
    print("FAIL");
  }

  var year = 2008;

  if (year % 4 == 0) {
    print('$year is a leap year');
  } else {
    print("$year isn't a leap year");
  }

  var num = 9;

  if (num % 2 == 0) {
    print("${num} is even");
  } else {
    print("${num} is odd");
  }
}
