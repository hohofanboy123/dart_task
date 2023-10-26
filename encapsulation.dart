class BankAccount {
  late String _accountHolder;
  late double _balance;

  BankAccount(String accountHolder, double initialBalance) {
    _accountHolder = accountHolder;
    _balance = initialBalance;
  }

  String get accountHolder => _accountHolder;

  double get balance => _balance;

  void setDeposit(double amount) {
    if (amount > 0)
    {
      _balance += amount;
      print("$accountHolder deposited $amount. New balance: $_balance");
    }
    else
    {
      print("Invalid deposit amount.");
    }
  }

  void setWithdraw(double amount) {
    if (amount > 0 && amount <= _balance)
    {
      _balance -= amount;
      print("$accountHolder withdrew $amount. New balance: $_balance");
    }
    else
    {
      print("Invalid withdrawal amount or insufficient funds.");
    }
  }
}

void main() {
  final account = BankAccount("Hamza Masuadi", 1000.0);

  print("Account holder: ${account.accountHolder}");
  print("Initial balance: ${account.balance}");

  account.setDeposit(500.0);
  account.setWithdraw(200.0);
  account.setWithdraw(1500.0);
}
