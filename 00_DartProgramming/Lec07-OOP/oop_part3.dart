// ================================================================
//   DART OOP — PART 3 (Last Part)
//   Topics: Inheritance (extends, super, @override), Mixins (with),
//           Abstraction (abstract class), Interface (implements),
//           Polymorphism
//
//   Run:  dart run oop_part3.dart
// ================================================================


// ----------------------------------------------------------------
// 1) INHERITANCE — child parent se cheezein leta hai
//    extends   = parent ki properties aur methods le lo
//    super     = parent ko bulana
//    @override = parent ka method apne tareeqe se likhna
// ----------------------------------------------------------------
class Vehicle {
  String brand;
  int wheels;

  Vehicle(this.brand, this.wheels);

  void start() {
    print('$brand start ho gayi');
  }

  void info() {
    print('$brand ke $wheels pahiye hain');
  }
}

class Car extends Vehicle {
  int seats; // Car ki apni property

  // Parent ka constructor super() se chalaya — car ke hamesha 4 pahiye
  Car(String brand, this.seats) : super(brand, 4);

  @override
  void start() {
    super.start(); // pehle parent wala kaam
    print('   Car: seatbelt laga lo! ($seats seats)');
  }
}

class Bike extends Vehicle {
  Bike(String brand) : super(brand, 2);

  @override
  void start() {
    print('$brand: kick maari, bike start!'); // parent wala bilkul nahi chalaya
  }
}

// NOTE: Dart mein ek class ka parent sirf EK ho sakta hai.
// class FlyingCar extends Car, Plane  ❌ Error


// ----------------------------------------------------------------
// 2) MIXINS — extra skills "plug in" karna (with)
//    Parent ek hi, lekin mixins jitne chaho
// ----------------------------------------------------------------
mixin Electric {
  int battery = 100;

  void charge() {
    battery = 100;
    print('Charge full: $battery%');
  }
}

mixin GPS {
  void navigate(String place) {
    print('$place ka raasta dikha raha hoon');
  }
}

class ElectricCar extends Car with Electric, GPS {
  ElectricCar(String brand) : super(brand, 5);
}


// ----------------------------------------------------------------
// 3) ABSTRACTION — adhoora naqsha
//    "Har payment pay() karegi" — kaise? woh child class batayegi
//    Abstract class ka seedha object NAHI banta
// ----------------------------------------------------------------
abstract class Payment {
  String get methodName;   // abstract getter (body nahi)
  void pay(double amount); // abstract method (body nahi)

  // Normal method — sab children ko muft milega
  void receipt(double amount) {
    print('   Receipt: Rs. $amount via $methodName');
  }
}


// ----------------------------------------------------------------
// 4) INTERFACE — contract / waada (implements)
//    implements karo tou SAARE methods khud likhne padenge
//    Dart mein har class khud ek interface hoti hai
// ----------------------------------------------------------------
abstract class Refundable {
  void refund(double amount);
}

class JazzCash extends Payment {
  final String mobile;
  JazzCash(this.mobile);

  @override
  String get methodName => 'JazzCash';

  @override
  void pay(double amount) {
    print('JazzCash ($mobile) pe OTP bheja, Rs. $amount ada');
    receipt(amount);
  }
}

class EasyPaisa extends Payment {
  final String mobile;
  EasyPaisa(this.mobile);

  @override
  String get methodName => 'EasyPaisa';

  @override
  void pay(double amount) {
    print('EasyPaisa ($mobile) se Rs. $amount ada');
    receipt(amount);
  }
}

// extends + implements EK saath: parent bhi hai, aur waada bhi
class CardPayment extends Payment implements Refundable {
  final String last4;
  CardPayment(this.last4);

  @override
  String get methodName => 'Card **** $last4';

  @override
  void pay(double amount) {
    print('Card **** $last4 se Rs. $amount charge hue');
    receipt(amount);
  }

  @override
  void refund(double amount) {
    print('   Rs. $amount card pe wapis aa gaye');
  }
}

// extends vs implements:
//   extends    = "main iska bachcha hoon, iska code bhi le raha hoon"
//   implements = "main yeh waada poora karunga, code sab apna likhunga"


// ----------------------------------------------------------------
// 5) POLYMORPHISM — ek naam, kai roop
//    checkout() ko farq nahi padta payment kaun si hai.
//    Kal "Raast" add karo, yeh function chhedna hi nahi padega.
// ----------------------------------------------------------------
void checkout(Payment payment, double amount) {
  payment.pay(amount);
}


void main() {
  // ---------- Inheritance ----------
  print('----- Inheritance -----');
  var car = Car('Mehran', 4);
  var bike = Bike('Honda 125');

  car.start();
  car.info();   // yeh method Car mein likha hi nahi — Vehicle se aaya
  bike.start();
  bike.info();

  // ---------- Mixins ----------
  print('\n----- Mixins -----');
  var tesla = ElectricCar('Tesla');
  tesla.start();             // Car se
  tesla.info();              // Vehicle se
  tesla.charge();            // Electric mixin se
  tesla.navigate('Gulshan'); // GPS mixin se

  // ---------- Abstraction, Interface, Polymorphism ----------
  print('\n----- Abstraction, Interface, Polymorphism -----');
  // var p = Payment();  // ❌ Error: abstract class ka object nahi banta

  List<Payment> payments = [
    JazzCash('0300-1234567'),
    EasyPaisa('0345-7654321'),
    CardPayment('4417'),
  ];

  for (var p in payments) {
    checkout(p, 1500); // ek hi line, teen alag behaviour

    // "is" se check karo ke object ne Refundable ka waada kiya hai ya nahi
    if (p is Refundable) {
      p.refund(500); // sirf Card refund kar sakta hai
    }
  }
}


// ================================================================
//   PRACTICE
//   1. Vehicle se "Rickshaw" class banao (3 pahiye) aur start() override karo.
//   2. "Raast" naam ki nayi Payment banao aur checkout() mein bhejo.
//      Dekho: checkout() ka code badalna hi nahi pada — yehi polymorphism hai.
//   3. Ek "Bluetooth" mixin banao aur ElectricCar mein add karo.
//
//   FLUTTER PREVIEW — agle lecture mein yeh dekhoge:
//     class MyApp extends StatelessWidget {   // Inheritance
//       @override                              // Overriding
//       Widget build(BuildContext context) {...}
//     }
//   Aaj ka har concept Flutter mein roz use hoga.
// ================================================================
