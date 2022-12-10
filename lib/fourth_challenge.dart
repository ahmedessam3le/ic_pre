
void call() {
  final text = '<p style="font-size: 8px">Hello World!</p>';


  // First Solution : By making only one regular expression to find style and the string
  final regex = RegExp(r'style="(.+?)">(.+?)</p>');

  final styleMatch = regex.firstMatch(text)?.group(1);
  final textMatch = regex.firstMatch(text)?.group(2);

  print(textMatch);
  print(styleMatch);


  /*

  Another Solution by making two separate regular expressions

  final styleMatch1 = RegExp(r'style="(.+?)"').firstMatch(text)?.group(1);
  final textMatch1 = RegExp(r'>(.+?)</p>').firstMatch(text)?.group(1);
  print(styleMatch1);
  print(textMatch1);


   */

}