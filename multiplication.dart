import'dart:io';
void main()
{
  stdout.write("Enter any positive number first:");
  int f_no=int.parse(stdin.readLineSync()!);
  stdout.write("Enter any positive number second:");
  int s_no=int.parse(stdin.readLineSync()!);
  print("multiplication is :${f_no*s_no}");
}
