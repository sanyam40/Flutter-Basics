/*

2. Create a Student Class, 
Input : From the Student
Rollno : Integer type
Name format : ajay KUmar sHaRma
Should be converted to : Ajay Kumar Sharma
3 Subject Marks : Out of 100
90
80
77

Output:
Total Marks 
Percentage
Grade
>=90 - A Grade
<90 - >=70 B Grade
<70 to >=60 C Grade
<60 to >=50 D Grade
< 50	E Grade 


College Name : All Caps
Name : Proper Case
Subjects 
Total 
Percentage
Grade

Note : showcase the use of Named Constructor, Setter and Getter, Positional parameter, optional parameter.

*/

class Student {
  late String _name;
  late int _rollno;
  late int _marks1;
  late int _marks2;
  late int _marks3;
  late String _collegeName;

  Student.fromDetails(
      String name, int rollno, int marks1, int marks2, int marks3,
      {String collegeName = 'DEMO COLLEGE'}) {
    _name = _formatName(name);
    _rollno = rollno;
    _marks1 = marks1;
    _marks2 = marks2;
    _marks3 = marks3;
    _collegeName = collegeName.toUpperCase();
  }

  int get rollNo => _rollno;

  String get name => _name;

  set collegeName(String collegeName) {
    _collegeName = collegeName.toUpperCase();
  }

  String _formatName(String name) {
    List<String> nameParts = name.toLowerCase().split(' ');
    for (int i = 0; i < nameParts.length; i++) {
      nameParts[i] = nameParts[i][0].toUpperCase() + nameParts[i].substring(1);
    }
    return nameParts.join(' ');
  }

  int calculateTotalMarks() => _marks1 + _marks2 + _marks3;

  double calculatePercentage() => calculateTotalMarks() / 3.0;

  String calculateGrade() {
    double percentage = calculatePercentage();
    if (percentage >= 90) {
      return 'A Grade';
    } else if (percentage >= 70) {
      return 'B Grade';
    } else if (percentage >= 60) {
      return 'C Grade';
    } else if (percentage >= 50) {
      return 'D Grade';
    } else {
      return 'E Grade';
    }
  }

  void displayResult() {
    print('Roll No: $_rollno');
    print('College Name: $_collegeName');
    print('Name: $_name');
    print('Marks: $_marks1, $_marks2, $_marks3');
    print('Total Marks: ${calculateTotalMarks()}');
    print('Percentage: ${calculatePercentage().toStringAsFixed(2)}%');
    print('Grade: ${calculateGrade()}');
  }
}

void main() {
  Student student =
      Student.fromDetails('Sanyam', 234, 90, 80, 77, collegeName: 'NCU');

  student.displayResult();

  student.collegeName = 'NCU University';

  student.displayResult();
}
