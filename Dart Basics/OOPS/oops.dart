// Basics OOPs concept in Dart

void main() {
  var student = Student("sanyam", 234);
  print(student.result());
}

class Student {
  // Instance variables
  String? name; // ? is used when the variable is not initialized
  int? rollno;

  // parameterized constructor
  Student(String name, int rollno) {
    this.name = name;
    this.rollno = rollno;
  }

  String result() {
    var result = "NAME IS : $name & ROLLNO IS : $rollno";
    return result;
  }

  @override
  String toString() {
    return super.toString();
  }
}
