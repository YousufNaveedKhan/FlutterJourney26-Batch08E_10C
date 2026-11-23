# 📝 Dart OOP — Assignment (Part 1 + Part 2)

**Topics:** Class, Object, Properties, Methods, Constructor, `this`, Encapsulation (`_` private, getter, setter), Named Parameters, `required`, `final`, Static

---

## 📌 Rules

- File ka naam: `assignment_<aapka_naam>.dart`
- Run karne ke liye: `dart run assignment_<aapka_naam>.dart`
- Har task ki class banao aur uska test `main()` mein likho.
- Har method mein **ghalat input check karna zaroori** hai.
- Messages Roman Urdu ya English, jo aap ki marzi.
- Copy-paste kiya ya AI se poora code likhwaya tou **marks zero**.

---

## Task 1 — MobilePhone `[20 marks]`
> Part 1 ki revision: class, constructor, methods

`MobilePhone` naam ki class banao.

**Properties:**
| Property | Type |
|---|---|
| brand | `String` |
| model | `String` |
| price | `double` |
| battery | `int` |

**Constructor:** normal (positional) constructor, `this` ke saath.

**Methods:**
1. `showInfo()` → String return kare, jaise:
   ```
   Samsung A15 || Price: 45000 || Battery: 30%
   ```
2. `isExpensive()` → `bool`. Price 100000 se zyada ho tou `true`. *(arrow function `=>` use karo)*
3. `charge(int percent)` → battery mein percent add kare.
   - Battery **100 se upar nahi** jaani chahiye.
   - `percent` 0 ya minus ho tou `"Invalid"` print kare.

**`main()` mein:**
- 2 mobile objects banao (ek sasta, ek mehenga)
- Dono ka `showInfo()` aur `isExpensive()` print karo
- Ek ko `charge(50)` karo, phir `charge(80)` karo. Battery 100 hi rehni chahiye.

---

## Task 2 — Product (Shopping Cart) `[20 marks]`
> Part 1: objects ki List ke saath kaam

`Product` naam ki class banao.

**Properties:** `name`, `price`, `quantity`

**Methods:**
1. `totalPrice()` → `price × quantity` return kare
2. `applyDiscount(double percent)`
   - Percent **0 se 50** ke darmiyan hona chahiye, warna `"Invalid discount"`
   - Sahi ho tou price kam ho jaye *(misaal: price 1000, discount 10 → price 900)*
3. `showInfo()` → name, price, quantity aur total print kare

**`main()` mein:**
- 3 products ki `List<Product>` banao
- `for` loop chala kar sab ka `showInfo()` print karo
- Poore cart ka **GRAND TOTAL** print karo
- Kisi ek product par `applyDiscount(10)` aur `applyDiscount(70)` try karo

---

## Task 3 — Wallet (JazzCash / EasyPaisa jaisa) `[40 marks]` ⭐
> Part 2 ka asal imtihaan: encapsulation, getter, setter, named parameters, final, static

`Wallet` naam ki class banao.

**Properties:**
| Property | Type | Note |
|---|---|---|
| owner | `final String` | ek dafa set, phir change nahi |
| mobileNo | `final String` | ek dafa set, phir change nahi |
| _balance | `double` | private, shuru mein 0 |
| _pin | `String` | private |

**Static:**
- `companyName` → `static const String` (koi bhi naam)
- `totalWallets` → `static int`, har naye wallet par +1
- `showCompanyInfo()` → static method, company ka naam aur total wallets print kare

**Constructor (Named Parameters):**
```dart
Wallet({
  required this.owner,
  required this.mobileNo,
  required String pin,
  double openingBalance = 0,
})
```
- `pin` → `_pin` mein save ho
- `openingBalance` 0 se zyada ho tou `_balance` mein jaye

**Getter:**
- `balance` → sirf parhne ke liye
- ⚠️ `pin` ka getter **NAHI** banana. Kyun? Jawab code mein comment kar ke likho.

**Setter:**
- `pin` → naya PIN sirf tab set ho jab **4 digits** ka ho, warna `"PIN 4 digits ka hona chahiye"`

**Methods:**
1. `addMoney(double amount)` → 0 ya minus ho tou `"Invalid amount"`
2. `sendMoney(double amount, String pin, Wallet receiver)`
   - PIN ghalat → `"Ghalat PIN"`
   - Amount 0 ya minus → `"Invalid amount"`
   - Balance kam → `"Insufficient balance"`
   - Sab theek → apne balance se kam ho, receiver ke wallet mein jama ho
   - Receiver ka balance badalne ke liye **`receiver.addMoney()`** use karo (seedha `_balance` mat chhedo)
3. `showInfo()` → owner, mobileNo aur balance print kare. **PIN kabhi print nahi hona chahiye!**

**`main()` mein:**
- 3 wallets banao
- Ek se doosre ko paisa bhejo (sahi PIN ke saath) ✅
- Ghalat PIN se bhejne ki koshish karo ❌
- Balance se zyada bhejne ki koshish karo ❌
- `pin = '12'` ❌ aur `pin = '5678'` ✅ try karo
- Sab ka `showInfo()` print karo
- `Wallet.showCompanyInfo()` call karo → **Total Wallets: 3**
- Yeh lines likh kar **comment** kar do, aur saath likho ke kya error aayega:
  ```dart
  // wallet1.balance = 100000;
  // wallet1.owner = 'Koi aur';
  ```

**Expected output ki misaal** *(aap ka thoda alag ho sakta hai)*:
```
Ali ne 2000 Sara ko bheje.
Ali: Ghalat PIN!
Sara: Insufficient balance!
Ali: PIN 4 digits ka hona chahiye!
Ali: PIN change hogaya.
Owner: Ali || Mobile: 0300-1234567 || Balance: 3000.0
Company: MyPay || Total Wallets: 3
```

---

## Task 4 — Theory `[20 marks]`
> Code nahi, jawab apne alfaaz mein, `main()` ke neeche comments mein likho.

1. Class aur Object mein kya farq hai? Apni misaal do (Mehran wali nahi).
2. Getter aur Setter kyun banate hain? Property seedha public kyun nahi kar dete?
3. Static property aur normal property mein kya farq hai? Wallet class se misaal do.
4. `final` aur private (`_`) mein kya farq hai?
5. Positional aur Named parameters mein kya farq hai? Flutter mein kaun se zyada use hote hain?

---

## 🎁 Bonus — LibraryBook `[+10 marks]`

`LibraryBook` class banao:
- `title`, `author` → `final`
- `_isIssued` → private `bool`, aur iska getter `isIssued`
- `totalIssued` → `static int`
- `issueBook()` → pehle se issued ho tou `"Pehle se issued hai"`, warna issue karo aur `totalIssued` +1
- `returnBook()` → issued nahi thi tou `"Yeh book issued hi nahi thi"`, warna return karo aur `totalIssued` -1

**`main()` mein:** 3 books banao, issue/return karo, aur aakhir mein `LibraryBook.totalIssued` print karo.

---

## ✅ Marking

| Task | Marks |
|---|---|
| Task 1 — MobilePhone | 20 |
| Task 2 — Product | 20 |
| Task 3 — Wallet | 40 |
| Task 4 — Theory | 20 |
| Bonus — LibraryBook | +10 |
| **Total** | **100 (+10)** |

**Marks cut honge agar:**
- Ghalat input check nahi kiya
- Private property bahar se seedha change ki
- Code run nahi hota
