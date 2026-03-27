import 'dart:io';

import 'package:my_demo_app/helper.dart';

void main() {
  Map<String, Helper> helpers = {
    "Piyush": Helper("Piyush", "piuyush@gmail.com", 15000),
    "Ayush": Helper("Piyush", "ayush@gmail.com", 15000),
    "Priya": Helper("Priya", "priya@gamil.com", 23000),
    "Riya": Helper.createWithZeroSalary("Riya", "riya@gmail.com"),
  };

  const String menu = """
Welcome to tutedude assignment 3
  Select Option from Below
    To View All Helpers           Press 1
    To See Particular Helper      Press 2
    To Increase a Helpers salary  Press 3
    To Decrease a Helpers salary  Press 4
    To Exit                       Press 0
  Enter your choice : """;
  bool exit = true;

  while (exit) {
    stdout.write("\n$menu");
    int choice = int.tryParse(stdin.readLineSync().toString()) ?? -1;
    if (choice == -1) {
      stdout.writeln("\n Invalid choice made");
      continue;
    }
    switch (choice) {
      case 0:
        {
          exit = false;
          stdout.writeln("Exiting ...");
          break;
        }
      case 1:
        {
          stdout.writeln("These are the current helpers");
          for (String key in helpers.keys) {
            stdout.writeln(key);
          }
          break;
        }
      case 2:
        {
          stdout.writeln("\nSelect the helper you want");
          int choice = 1;
          for (String key in helpers.keys) {
            stdout.writeln("${key.padRight(12)} $choice");
            choice++;
          }
          stdout.write("Make your choice : ");
          int made = int.tryParse(stdin.readLineSync().toString()) ?? -1;
          stdout.writeln();
          try {
            stdout.write(
              helpers[helpers.keys.toList()[made - 1]]!.getDetails(),
            );
          } catch (e) {
            stdout.write("Invalid choice $e");
          }
          break;
        }
      case 3:
        {
          stdout.writeln("Select the helper you want");
          int choice = 1;
          for (String key in helpers.keys) {
            stdout.writeln("${key.padRight(12)} $choice");
            choice++;
          }
          stdout.write("Make your choice : ");
          int made = int.tryParse(stdin.readLineSync().toString()) ?? -1;
          stdout.writeln();
          try {
            String key = helpers.keys.toList()[made - 1];
            stdout.write("Enter the amount you want to increase by: ");
            helpers[key]!.increaseSalary(
              int.parse(stdin.readLineSync().toString()),
            );
          } catch (e) {
            stdout.writeln("Invalid choice $e");
          }
          break;
        }
      case 4:
        {
          stdout.writeln("Select the helper you want");
          int choice = 1;
          for (String key in helpers.keys) {
            stdout.writeln("${key.padRight(12)} $choice");
            choice++;
          }
          stdout.write("Make your choice : ");
          int made = int.tryParse(stdin.readLineSync().toString()) ?? -1;
          try {
            String key = helpers.keys.toList()[made - 1];
            stdout.write("Enter the amount you want to decrease by: ");
            helpers[key]!.deductSalary(
              int.parse(stdin.readLineSync().toString()),
            );
          } catch (e) {
            stdout.writeln("Invalid choice $e");
          }
          break;
        }
      default:
        {
          stdout.writeln("Invalid choice, try Again");
          break;
        }
    }
    stdout.writeln();
  }
}
