
void call() {
  var list = [2, 3, 5, 1];
  // var matched = list.firstWhere((e) => e == 1);
  // var matched = list.firstWhere((e) => e == 10);
  var matched = list.firstEmpty((e) => e == 10);

  print(matched);

}

// extension ListFirstEmpty<T> on List<T> {
//   dynamic firstEmpty(bool Function(T) predicate) {
//     for (var element in this) {
//       if (predicate(element)) return element;
//     }
//     return 'Element Not Found';
//   }
// }

extension ListFirstEmpty<T> on List<dynamic> {
  dynamic firstEmpty(bool Function(dynamic) predicate) {
    try {
      return firstWhere(predicate);
    }  catch (error) {
      return 'Element Not Found';
    }
  }
}

