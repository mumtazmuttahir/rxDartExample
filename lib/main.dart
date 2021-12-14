import 'package:flutter/material.dart';
import 'src/app.dart';

// Stream<int> getNumbers() async* {
//   for (int index = 0; index < 10; index++) {
//     yield index;
//     await Future.delayed(Duration(seconds: 1));
//   }
// }

// Stream<int> getNumnbersException() async* {
//   for (int index = 0; index < 10; index++) {
//     yield index;
//     await Future.delayed(Duration(seconds: 1));
//     if (index == 2) {
//       throw Exception();
//     }
//   }
// }

// void listen() {
//   // getNumbers().listen((data) {
//   //   print(data);
//   // });

//   getNumnbersException().listen((data) {
//     print(data);
//   }).onError((error){
//     print("An error has occured");
//   });

//   // var sum = 0;

//   // getNumbers().listen((data) {
//   //   sum += data;
//   // }).onDone(() {
//   //   print(sum);
//   // });
// }

// void awaitFor() async {
//   var sum = 0;
//   await for (var number in getNumbers()) {
//     sum += number;
//     if (sum > 10) {
//       break;
//     }
//   }
//   print("Sum is = " + sum.toString());
// }

// //Checks if the stream is empty
// void isEmpty() async {
//   if (await getNumbers().isEmpty) {
//     print('Stream is empty');
//   } else {
//     print('Stream is not empty');
//   }
// }

// //First value of the stream
// void first () async {
//   print(await getNumbers().first);
// }

// //Last value of the stream
// void last () async {
//   print(await getNumbers().last);
// }

// //Print the length, i.e. the number of times the emission occurred
// void length () async {
//   print(await getNumbers().length);
// }

// //Emits only one value
// void single () async {
//   print(await getNumbers().single);
// }

// void any () async {
//   print(await getNumbers().any((int i) => i == 3));
// }

// void contains () async {
//   print(await getNumbers().contains(1));
// }

// void elementAt () async {
//   print(await getNumbers().elementAt(2));
// }

// void firstWhere () async {
//   print(await getNumbers().firstWhere((i) => i > 1));
// }

// void join () async {
//   print(await getNumbers().join(', '));
// }

// void lastWhere () async {
//   print(await getNumbers().lastWhere((i) => i > 1));
// }

// void singleWhere () async {
//   print(await getNumbers().singleWhere((i) => i < 1));
// }

// Waits for the stream emits the first property, and then returns a bool value if the stream is empty or not
// void main() async {
  /*getNumbers().listen((data) { 
    print(data);
  });*/

  // listen();
  // awaitFor();
  // isEmpty();
  // first();
  // last();
  // length();
  // single();
  // any();
  // contains();
  // elementAt();
  // firstWhere();
  // join();
  // lastWhere();
  // singleWhere();

//   runApp(MyApp());
// }

void main() {
  runApp(App());
}
