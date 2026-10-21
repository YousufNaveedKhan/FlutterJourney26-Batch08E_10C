// ================================================================
//   DART OOP — ASSIGNMENT (Part 1 + Part 2)
//
//   Topics: Class, Object, Properties, Methods, Constructor, this,
//           Encapsulation (_ private, getter, setter),
//           Named Parameters, required, final, Static
//
//   File ka naam:  assignment_<aapka_naam>.dart
//   Run:           dart run assignment_<aapka_naam>.dart
//
//   RULES:
//   - Har task ki class aur uska test main() mein likho.
//   - Har method mein galat input check karna zaroori hai.
//   - Messages Roman Urdu ya English mein, jo marzi.
//   - Copy-paste ya AI se pura code likhwaya tou marks zero.
// ================================================================


// ================================================================
//   TASK 1 — MobilePhone  (Part 1)                      [20 marks]
// ================================================================
// "MobilePhone" naam ki class banao.
//
// Properties:
//   brand (String), model (String), price (double), battery (int)
//
// Constructor: normal (positional) constructor with this.
//
// Methods:
//   1. showInfo()      → String return kare:
//                        "Samsung A15 || Price: 45000 || Battery: 30%"
//   2. isExpensive()   → bool, agar price 100000 se zyada ho tou true
//                        (arrow function => use karo)
//   3. charge(int percent) → battery mein percent add kare
//                        - battery 100 se upar nahi jaani chahiye
//                        - percent 0 ya minus ho tou "Invalid" print kare
//
// main() mein:
//   - 2 mobile objects banao (ek sasta, ek mehenga)
//   - dono ka showInfo() print karo
//   - dono ka isExpensive() print karo
//   - ek ko charge(50) karo, phir charge(80) karo, battery 100 hi rahe


// ================================================================
//   TASK 2 — Product (Shopping Cart)  (Part 1)          [20 marks]
// ================================================================
// "Product" naam ki class banao.
//
// Properties:  name, price, quantity
//
// Methods:
//   1. totalPrice()            → price × quantity return kare
//   2. applyDiscount(double percent)
//        - percent 0 se 50 ke darmiyan hona chahiye, warna "Invalid discount"
//        - sahi ho tou price kam ho jaye
//          (misaal: price 1000, discount 10 → price 900)
//   3. showInfo()              → name, price, quantity, total print kare
//
// main() mein:
//   - 3 products ki List<Product> banao
//   - for loop chala ke sab ka showInfo() print karo
//   - poore cart ka GRAND TOTAL print karo
//   - kisi ek product pe applyDiscount(10) aur applyDiscount(70) try karo


// ================================================================
//   TASK 3 — Wallet (JazzCash / EasyPaisa jaisa)  (Part 2)   [40 marks]
// ================================================================
// "Wallet" naam ki class banao. Yeh assignment ka MAIN task hai.
//
// Properties:
//   - owner          → final String
//   - mobileNo       → final String
//   - _balance       → private double, shuru mein 0
//   - _pin           → private String
//
// Static:
//   - companyName    → static const String  (koi bhi naam)
//   - totalWallets   → static int, har naye wallet pe +1
//   - showCompanyInfo() → static method, company ka naam aur
//                         total wallets print kare
//
// Constructor: NAMED PARAMETERS ke saath
//   Wallet({required this.owner, required this.mobileNo,
//           required String pin, double openingBalance = 0})
//   - pin _pin mein save ho
//   - openingBalance 0 se zyada ho tou _balance mein jaye
//
// Getter:
//   - balance → sirf parhne ke liye
//   - (pin ka getter NAHI banana — kyun? comment mein jawab likho)
//
// Setter:
//   - pin → naya pin set kare, lekin sirf agar woh 4 digits ka ho
//           warna "PIN 4 digits ka hona chahiye" print kare
//
// Methods:
//   1. addMoney(double amount)
//        - 0 ya minus ho tou "Invalid amount"
//   2. sendMoney(double amount, String pin, Wallet receiver)
//        - pin ghalat ho tou "Ghalat PIN"
//        - amount 0 ya minus ho tou "Invalid amount"
//        - balance kam ho tou "Insufficient balance"
//        - sab theek ho tou apne balance se kam ho, receiver mein jama ho
//          receiver ka balance badalne ke liye receiver.addMoney() use karo
//   3. showInfo() → owner, mobileNo aur balance print kare
//                   (PIN kabhi print nahi hona chahiye!)
//
// main() mein:
//   - 3 wallets banao
//   - ek se doosre ko paisa bhejo (sahi PIN ke saath)
//   - ghalat PIN se bhejne ki koshish karo
//   - balance se zyada bhejne ki koshish karo
//   - pin = '12' aur pin = '5678' try karo
//   - sab ka showInfo() print karo
//   - Wallet.showCompanyInfo() call karo → Total Wallets: 3
//
//   - Yeh line likh ke COMMENT kar do aur saath likho kya error aayega:
//     // wallet1.balance = 100000;
//     // wallet1.owner = 'Koi aur';


// ================================================================
//   TASK 4 — THEORY (main() ke neeche comments mein jawab do)  [20 marks]
// ================================================================
//   Q1. Class aur Object mein kya farq hai? Apni misaal do (Mehran wali nahi).
//   Q2. Getter aur Setter kyun banate hain? Seedha property public
//       kyun nahi kar dete?
//   Q3. Static property aur normal property mein kya farq hai?
//       Wallet class se misaal do.
//   Q4. final aur private (_) mein kya farq hai?
//   Q5. Positional parameters aur Named parameters mein kya farq hai?
//       Flutter mein kaun se zyada use hote hain?


// ================================================================
//   BONUS — LibraryBook  (+10 marks)
// ================================================================
// "LibraryBook" class banao:
//   - title, author (final)
//   - _isIssued (private bool), getter isIssued
//   - static int totalIssued
//   - issueBook()  → agar pehle se issued hai tou "Pehle se issued hai",
//                    warna issue karo aur totalIssued +1
//   - returnBook() → agar issued nahi tou "Yeh book issued hi nahi thi",
//                    warna return karo aur totalIssued -1
//   main() mein 3 books banao, issue/return karo,
//   aur aakhir mein LibraryBook.totalIssued print karo.


// ================================================================
//   EXPECTED OUTPUT KI MISAAL (Task 3 ka hissa — aap ka thoda alag ho sakta hai)
// ================================================================
//   Ali ne 2000 Sara ko bheje.
//   Ali: Ghalat PIN!
//   Sara: Insufficient balance!
//   Ali: PIN 4 digits ka hona chahiye!
//   Ali: PIN change hogaya.
//   Owner: Ali || Mobile: 0300-1234567 || Balance: 3000.0
//   Company: MyPay || Total Wallets: 3


// ================================================================
//   MARKING
//   Task 1: 20 | Task 2: 20 | Task 3: 40 | Task 4: 20 | Bonus: +10
//
//   Marks cut honge agar:
//   - galat input check nahi kiya
//   - private property bahar se seedha change ki
//   - code run nahi hota
// ================================================================


void main() {
  // Apna code yahan likho
}
