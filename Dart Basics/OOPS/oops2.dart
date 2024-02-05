/// The Person class is a subclass of the Object class in Dart.
class Person extends Object {
  String? name;
  int? _age; //  _ is used to make private variable

  String? get getName => this.name;

  set setName(String? name) => this.name = name;

  get getAge => this._age;

  set setAge(age) => this._age = age;

  // Constructors
  /* In dart only one constructor can be generated even one is parameterized or not */

  // Person(this.name, this.age);

  // Person({required name, required age}) {
  //   this.name = name;
  //   this.age = age;
  // }

  Person({required name, required age})
      : this.name = name,
        this._age = age;

  // Person({required this.name, required this.age});

  // Named Constructor
  Person.generator({required name, required age}) {
    this.name = name;
    this._age = age;
  }

  Person.anotherGenerator(this.name, this._age);

  Person.second(this.name, [int? age]); // optional parameter

  Person.third(
      {String? name, int? age}) // OPTIONAL NAMED PARAMETER WITH DEFAULT VALUE
      : this.name = name ?? "Sanyam",
        this._age = age ?? 20;

  @override
  String toString() {
    // return super.toString(); // print -> Instance of 'Person' ( DEFAULT )
    return "Name is $name and age is $_age";
  }
}

void main() {
  // final person = new Person(name: "Sanyam", age: 20);
  final person = Person(name: "Sanyam", age: 20); // new keyword is optional
  print(person);
}
