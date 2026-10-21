// ================================================================
//   DART OOP — PART 2
//   Topics: Encapsulation (private _, getter, setter),
//           Named Parameters, final, Static Members
//
//   Run:  dart run oop_part2.dart
// ================================================================


// ----------------------------------------------------------------
// Part 1 wali Student class (revision)
// ----------------------------------------------------------------
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
    if (marks >= 80) return 'A';
    if (marks >= 50) return 'B';
    return 'F';
  }
}


// ----------------------------------------------------------------
// ENCAPSULATION — data ki hifazat (ATM wali misaal)
// Balance seedha change nahi hoga, sirf methods ke through,
// aur har method apne rules check karega.
// ----------------------------------------------------------------
class BankAccount {
  // final = ek dafa value set, phir change nahi ho sakti
  final String owner;

  // _ = private property (bahar se seedha access nahi karni)
  double _balance = 0;
  double _dailyLimit = 50000;
  static const double minWithdraw = 500;

  // STATIC = poori class ki EK cheez, har object ki alag nahi
  static const String bankName = 'GLS 2 Bank';
  static int totalAccounts = 0;

  // Named Parameters — { } ke andar, call karte waqt naam se value do
  // required = dena lazmi hai | openingBalance = optional (default 0)
  BankAccount({required this.owner, double openingBalance = 0}) {
    if (openingBalance > 0) {
      _balance = openingBalance;
    }
    totalAccounts++; // har naya account bante hi counter barhega
  }

  // GETTER — sirf PARHNE ki ijazat
  double get balance => _balance;
  double get dailyLimit => _dailyLimit;

  // SETTER — LIKHNE ki ijazat, lekin rules ke saath
  set dailyLimit(double value) {
    if (value < 0 || value > 100000) {
      print('$owner: Daily limit 0 aur 100000 ke darmiyan honi chahiye!');
      return;
    }
    _dailyLimit = value;
    print('$owner: Daily limit ab $value hai.');
  }

  void deposit(double amount) {
    if (amount <= 0) {
      print('$owner: Invalid amount!');
      return;
    }
    _balance += amount;
    print('$owner: $amount deposit hogayi.');
  }

  void withdraw(double amount) {
    if (amount < minWithdraw) {
      print('$owner: Kam se kam $minWithdraw withdraw kar sakte ho!');
      return;
    }
    if (amount > _dailyLimit) {
      print('$owner: Daily limit se zyada withdraw nahi kar sakte!');
      return;
    }
    if (amount > _balance) {
      print('$owner: Insufficient balance!');
      return;
    }
    _balance -= amount;
    print('$owner: $amount withdraw hogayi.');
  }

  void showAccInfo() {
    print('AccHolder: $owner || Balance: $balance || Daily Limit: $dailyLimit');
  }

  // STATIC METHOD — object ke baghair, class ke naam se chalta hai
  static void showBankInfo() {
    print('BankName: $bankName || Total Accounts: $totalAccounts');
  }
}

// NOTE: Dart mein _ FILE level pe private karta hai, class level pe nahi.
// Isi file ke andar main() bhi _balance access kar sakta hai.
// Asal encapsulation dekhne ke liye BankAccount ko alag file
// (bank_account.dart) mein rakho, import karo, phir
// acc1._balance likh ke error dekho.


void main() {
  // ---------- Part 1 revision ----------
  var s1 = Student('Ali', 5001, 55);
  print(s1.showInfo());
  s1.marks = 45;
  print('Ali ke naye marks: ${s1.marks} | Pass? ${s1.isPass()} | Grade: ${s1.grade()}');

  // ---------- Encapsulation ----------
  print('\n----- Encapsulation -----');
  var acc1 = BankAccount(owner: 'Faizan');
  var acc2 = BankAccount(owner: 'Ammaz', openingBalance: 2000);

  acc1.deposit(5000);
  acc1.withdraw(4500);     // ✅
  acc2.withdraw(4000);     // ❌ Insufficient balance
  acc1.deposit(-100);      // ❌ Invalid amount

  var acc3 = BankAccount(owner: 'Ayaan');
  acc3.withdraw(1000);     // ❌ Insufficient balance
  acc3.deposit(550);
  acc3.withdraw(450);      // ❌ Minimum 500

  // Setter rules check karta hai
  acc1.dailyLimit = 200000; // ❌ rok diya
  acc1.dailyLimit = 20000;  // ✅

  print('');
  acc1.showAccInfo();
  acc2.showAccInfo();
  acc3.showAccInfo();

  // Yeh lines uncomment karke error dekho:
  // acc1.balance = 999999;  // ❌ balance sirf getter hai, setter nahi
  // acc1.owner = 'Bilal';   // ❌ owner final hai

  // ---------- Static ----------
  print('\n----- Static -----');
  // Object se nahi, CLASS ke naam se access
  print('Bank: ${BankAccount.bankName}');
  BankAccount.showBankInfo(); // Total Accounts: 3
}


// ================================================================
//   PRACTICE
//   1. Student mein private _fees banao, getter do, aur
//      payFees(amount) method jo 0 ya minus amount reject kare.
//   2. "Mobile" class banao jis mein static counter ho jo bataye
//      ke ab tak kitne Mobile objects bane.
// ================================================================
