void main(List<String> args) {
  if (args[0] == "-h") {
    help();
    return;
  }
  if (!isNumeric(args[0]) || !isNumeric(args[2])) {
    help();
    return;
  }
  switch (args[1]) {
    case "+":
      double result = double.parse(args[0]) + double.parse(args[2]);
      print(result % 1 == 0 ? result.round() : result);
      break;
    case "x":
      double result = double.parse(args[0]) * double.parse(args[2]);
      print(result % 1 == 0 ? result.round() : result);
      break;
    case "-":
      double result = double.parse(args[0]) - double.parse(args[2]);
      print(result % 1 == 0 ? result.round() : result);
      break;
    case "/":
      if (double.parse(args[2]) == 0.0) {
        print("You can't divide a number by zero!");
        break;
      }
      double result = double.parse(args[0]) / double.parse(args[2]);
      print(result % 1 == 0 ? result.round() : result);
      break;
    default:
      help();
      break;
  }
}

void help() {
  print("USAGE: dart calculator.dart [num1] [sign] [num2]");
  print(
      "SIGNS: \n[+] for adding\n[x] for multiplying\n[-] for substracting\n[/] for dividing. ");
}

bool isNumeric(String arg) {
  if (arg == null) {
    return false;
  }
  return double.parse(arg, (err) => null) != null;
}
