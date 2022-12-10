
void call () {
  late var f;
  for (var i = 0; i < 10; i++) {
    f = Foo();
  }

  print(f.a);
  print(Foo.a);
  print(f._p);
}

class Foo {
  static int a = 0;
  int _p = 1;

  Foo() {
    a++;
  }
}