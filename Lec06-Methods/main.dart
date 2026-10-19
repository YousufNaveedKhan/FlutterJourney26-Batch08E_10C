// METHOD ( MAIN )
void main() {
  greet() {
    return print("HELLO WORLD");
  }

  greet();

  add(a, b) {
    return a + b;
  }

  var resAdd = add(9, 10);
  print("Addition: $resAdd");

  sub(c, d) {
    return c - d;
  }

  var resSub = sub(10, 2);
  print("Sub: $resSub");

}
