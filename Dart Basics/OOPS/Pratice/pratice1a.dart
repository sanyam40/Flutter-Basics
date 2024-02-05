/*

Create a class employee with the properties: EmpId, EmpName, EmpDept and EmpSalary. Provide
setter and getter methods for these properties. Calculate the salary as per the dept of the
employee. All employee are entitled for basic salary 50000 with Allowances as per the dept. The
percentage of allowances are given in the following map: {admin: 20%, teamlead:70%, technical:
60%, officestaff:10%}.

*/

class Employee {
  int? empId;
  String? empName;
  String? empDept;
  int? salary;

  Employee(int empId, String empName, String empDept, int salary) {
    this.empId = empId;
    this.empName = empName;
    this.empDept = empDept;
    this.salary = salary + calculateAllowance(empDept, salary);
  }

  int getEmpId() {
    return empId!;
  }

  String getEmpName() {
    return empName!;
  }

  String getEmpDept() {
    return empDept!;
  }

  int getSalary() {
    return salary!;
  }

  void setEmpId(int empId) {
    this.empId = empId;
  }

  void setEmpName(String empName) {
    this.empName = empName;
  }

  void setEmpDept(String empDept) {
    this.empDept = empDept;
  }

  void setSalary(int salary) {
    this.salary = salary + calculateAllowance(empDept!, salary);
  }

  int calculateAllowance(String empDept, int salary) {
    Map<String, double> allowanceMap = {
      'admin': 0.20,
      'teamlead': 0.70,
      'technical': 0.60,
      'officestaff': 0.10,
    };

    double allowancePercentage = allowanceMap[empDept] ?? 0.0;
    return (allowancePercentage * salary).round();
  }
}

void main() {
  Employee employee = Employee(1, 'Sanyam', 'admin', 2000000);
  print('Employee Salary: ${employee.getSalary()}');
}
