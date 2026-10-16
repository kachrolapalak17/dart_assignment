import 'dart:io';
import 'dart:async';

Future<void> main() async {
  String bookName;
  String status = "Available";

  stdout.write("Enter book name: ");
  bookName = stdin.readLineSync() ?? "";

  print("Searching for book...");
  await Future.delayed(Duration(seconds: 1));

  if (bookName.toLowerCase() == "dart") {
    print("Book Found: $bookName");

    print("Book Status: $status");
    stdout.write("Do you want to issue the book? (yes/no): ");

    String choice = stdin.readLineSync() ?? "";

    if (choice.toLowerCase() == "yes") {
      status = "Issued";
      print("Book issued successfully!");
    }

    stdout.write("Do you want to return the book? (yes/no): ");
    String returnChoice = stdin.readLineSync() ?? "";

    if (returnChoice.toLowerCase() == "yes") {
      await Future.delayed(Duration(seconds: 1));
      status = "Available";
      print("Book returned successfully!");
    }

    print("Final Book Status: $status");
  } else {
    print("Book not found!");
  }
}