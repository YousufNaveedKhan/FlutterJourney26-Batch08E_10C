# Flutter Course 2026

This repository is the root folder for the Flutter and Dart course. Each topic's code and lecture material is organized into its own folder so you can easily find any lecture.

## Folder Structure

```
FlutterCourse26/
├── 00_DartProgramming/        # Dart language, from the basics to OOP
└── 01_FlutterFundamentals/    # Flutter fundamentals (project-based lectures)
```

---

## 00 - Dart Programming

Lectures covering Dart from the basics to advanced concepts. Each lecture folder has a `main.dart` file that demonstrates that lecture's concepts in practice.

| # | Folder | Topics |
|---|--------|--------|
| 01 | `Lec01-DartIntroduction` | Introduction to Dart, strings, integers, doubles, booleans, variables |
| 02 | `Lec02-Keywords_and_DataTypes` | `var`, `const`, `final`, `dynamic`, data types and keywords |
| 03 | `Lec03-Operators` | Comparison and arithmetic operators, `if`/`else`, leap year and even/odd checks |
| 04 | `Lec04-Conditions_Loops_and_Functions` | Conditions, loops and functions, result sheet and grade ladder examples |
| 05 | `Lec05-List_and_Map` | Lists, maps, `for` loops and `forEach` |
| 06 | `Lec06-Methods` | Methods (functions), parameters and return values |
| 07 | `Lec07-OOP` | Object-Oriented Programming: classes, objects, constructors, encapsulation, static members. The assignment is also in this folder (`assignment_oop_part1_2.md`) |

### How to run

```bash
cd 00_DartProgramming/Lec01-DartIntroduction
dart run main.dart
```

> Each lecture folder can be run with `dart run <file_name>.dart`.

---

## 01 - Flutter Fundamentals

Introductory Flutter lectures, where each lecture is a separate Flutter project.

| # | Folder | Topics |
|---|--------|--------|
| 01 | `lec01_introduction` | Structure of a Flutter project and your first app |

### How to run

```bash
cd 01_FlutterFundamentals/lec01_introduction
flutter pub get
flutter run
```

### Requirements

- [Dart SDK](https://dart.dev/get-dart) (included with Flutter)
- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Any IDE: VS Code or Android Studio (with the Flutter and Dart plugins)

---

## Notes

- Code comments and assignments are written in Roman Urdu and English.
- Each lecture's code is kept inside its own folder so that lectures stay independent of one another.
