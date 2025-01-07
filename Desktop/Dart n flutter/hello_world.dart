void defineVariables() {
  int myInt = 42;
  double myDouble = 3.14;
  String myString = "Hello, Dart!";
  bool myBool = true;
  List<int> myList = [1, 2, 3, 4, 5];

  print("Integer: $myInt");
  print("Double: $myDouble");
  print("String: $myString");
  print("Boolean: $myBool");
  print("List: $myList");
}

int stringToInt(String input) => int.tryParse(input) ?? 0;
double stringToDouble(String input) => double.tryParse(input) ?? 0.0;
String intToString(int input) => input.toString();
double intToDouble(int input) => input.toDouble();

void convertAndDisplay(String input) {
  int intValue = stringToInt(input);
  double doubleValue = stringToDouble(input);

  print("String to int: $intValue");
  print("String to double: $doubleValue");
}

void checkNumber(int number) {
  if (number > 0) {
    print("The number is positive.");
  } else if (number < 0) {
    print("The number is negative.");
  } else {
    print("The number is zero.");
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("Eligible to vote.");
  } else {
    print("Not eligible to vote.");
  }
}

void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day");
  }
}

void forLoop() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void whileLoop() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

void doWhileLoop() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}

void processNumbers(List<int> numbers) {
  for (int number in numbers) {
    print("Number: $number");
    if (number % 2 == 0) {
      print("Even");
    } else {
      print("Odd");
    }

    switch (number) {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        print("Category: Small");
        break;
      default:
        if (number >= 11 && number <= 100) {
          print("Category: Medium");
        } else {
          print("Category: Large");
        }
    }
  }
}

void main() {
  
  defineVariables();

  convertAndDisplay("123");

  checkNumber(-5);
  checkVotingEligibility(20);
  printDayOfWeek(3);

  forLoop();
  whileLoop();
  doWhileLoop();

  List<int> numbers = [2, 15, 105];
  processNumbers(numbers);
}