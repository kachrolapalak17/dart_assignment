mixin flyable{
  void fly()
  {
    print('Flying...');
  }
}
class bird with flyable
{
  void show()
  {
    print('Bird is flying..');
  }
}
class superhero with flyable
{
  void show()
  {
    print('Superhero is flying...');
  }
}
void main()
{
  bird b=bird();
  superhero h = superhero();
  b.fly();
  b.show();
  h.fly();
  h.show();
}
