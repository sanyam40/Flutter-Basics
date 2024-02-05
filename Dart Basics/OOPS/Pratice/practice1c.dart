/*

Define a Dart class named BankAccount to represent bank accounts. 
Implement a constructor with a required parameter for the account holder's name and 
optional named parameters for account number, balance, and account type. 
Ensure that the account number is initialized to a unique value if not provided, and 
the balance defaults to 0.0. Include methods to deposit, withdraw, and display account details.

*/

class BankAccount {
  late String accountHolderName;
  late int accountNumber;
  late double balance;
  late String accountType;

  BankAccount(this.accountHolderName,
      {int? accountNumber, double balance = 0.0, String? accountType}) {
    this.accountNumber = accountNumber ?? _generateUniqueAccountNumber();
    this.balance = balance;
    this.accountType = accountType ?? 'Savings';
  }

  int _generateUniqueAccountNumber() {
    return DateTime.now().microsecondsSinceEpoch;
  }

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited $amount. New balance: $balance');
    } else {
      print('Invalid deposit amount');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('Withdrawn $amount. New balance: $balance');
    } else {
      print('Invalid withdrawal amount or insufficient funds');
    }
  }

  void displayAccountDetails() {
    print('Account Holder: $accountHolderName');
    print('Account Number: $accountNumber');
    print('Account Type: $accountType');
    print('Balance: $balance');
  }
}

void main() {
  BankAccount account = BankAccount('sanyam',
      accountNumber: 123456, balance: 1000, accountType: 'Current');
  account.displayAccountDetails();

  account.deposit(500);
  account.withdraw(200);
  account.displayAccountDetails();
}
