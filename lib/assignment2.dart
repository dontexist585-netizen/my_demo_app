import 'dart:io';

void main() async {
  List<String> itemList = [];
  Map<String, String> itemMap = {};
  String menu = """
Welcome to Tutedude assignment two Please make a choice

1 Multiply two int
2 Concat two String
3 Fetch the list 
4 Insert into list
5 Fetch Map
6 Insert into Map
0 Exit

Enter your Choice : """;
  bool exit = false;
  while (!exit) {
    print(menu);
    int x = int.tryParse(stdin.readLineSync().toString().trim()) ?? -1;
    if (x == -1) {
      print("Invalid choice\n$menu");
      continue;
    }
    switch (x) {
      case 0:
        {
          print("Goodbye");
          exit = true;
          break;
        }
      case 1:
        {
          print("Enter Number One : ");
          int? one = int.tryParse(stdin.readLineSync().toString());
          print("Enter Number Two : ");
          int? two = int.tryParse(stdin.readLineSync().toString());
          if (one == null || two == null) {
            print("Wrong Input");
            break;
          }
          print("Result : ${one * two}");
          break;
        }
      case 2:
        {
          print("Enter String a : ");
          String one = stdin.readLineSync() ?? "";
          print("Enter String b : ");
          String two = stdin.readLineSync() ?? "";
          print("Result : $one$two\n");
          break;
        }
      case 3:
        {
          print("Item List");
          for (String item in itemList) {
            print(item);
          }
          break;
        }
      case 4:
        {
          print("Enter what you want to append in List");
          String appendable = stdin.readLineSync() ?? '';
          if (appendable.isNotEmpty) {
            itemList.add(appendable);
            print("Successfully Added");
            break;
          }
          print("Wrong Input");
          break;
        }
      case 5:
        {
          print("Item Map");
          for (int i = 0; i < itemMap.keys.length; i++) {
            print(
              "${itemMap.keys.toList()[i]}:${itemMap[itemMap.keys.toList()[i]]}",
            );
          }
          break;
        }

      case 6:
        {
          print("Enter String Key : ");
          String one = stdin.readLineSync() ?? "";
          print("Enter Value : ");
          String two = stdin.readLineSync() ?? "";
          if (one.isEmpty || two.isEmpty) {
            print("Wrong Input");
            break;
          }
          itemMap[one] = two;
          print("Operation Successful");
          break;
        }
      default:
        print("Wrong Input");
        break;
    }
    print("");
    await Future.delayed(const Duration(seconds: 1));
  }
}
