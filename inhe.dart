class Animal
{
  String name;

  Animal(this.name);
  void sound()
  {
    print("Animal makes a sound..");
  }
}
class Dog extends Animal
{
  Dog(String name): super (name);
  @override
  void sound()
  {
    print("Dod barks");
  }
  void showInfo()
  {
    print("Name :$name");
  }
}
void main()
{
  Dog d=Dog("Bruno");
  d.sound();
  d.showInfo();

}
