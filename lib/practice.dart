// void main() async {
//   print("1 Hello World");
//   await Future.delayed(Duration(seconds: 1));
//   print("2 Hello World");
//   await Future.delayed(Duration(seconds: 2));
//   print("3 Hello World");
//   await Future.delayed(Duration(seconds: 3));
//   print("4 Hello World");
// }
// sync programming
// wait await
// async programming (backend, API, offline Database)

// void main() async {
//   print(await numberSum(10, 20));
// }
//
// Future<int> numberSum(int a, int b) async {
//   await Future.delayed(Duration(seconds: 5));
//   return a + b;
// }

void main() async {
  int i = 1;

  Future.doWhile(() async{
    print("$i Hello");
    await Future.delayed(Duration(milliseconds: 500));
    i++;
    return (i < 10);
  });

  // do {
  //   print("$i Hello");
  //   i++;
  // } while (i < 10);
}
