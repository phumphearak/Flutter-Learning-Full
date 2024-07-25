void main() {
  Runes input1 = new Runes('\u{1f468}');
  print(new String.fromCharCodes(input1));

  Runes input2 = new Runes('\u{1f605}');
  print(new String.fromCharCodes(input2));
  print('Hello');

  (5 != 2) ? print('true number ') : print('false number ');
}
