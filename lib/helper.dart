class Helper {
  final String _name;
  final String _email;
  static const String masterName = "Ahiva"; // Can't be changed on runtime //public access
  int _salary;

  Helper.createWithZeroSalary(this._name, this._email) : _salary = 0;

  Helper(this._name, this._email, this._salary);

  void _validateAmount(int amount) {
    if (amount <= 0) throw Exception("Amount should be positive");
  }

  void increaseSalary(int amount) {
    _validateAmount(amount);
    _salary += amount;
  }

  void deductSalary(int amount) {
    _validateAmount(amount);
    if (_salary - amount > 0) {
      _salary -= amount;
    } else {
      print("Salary can't be negative");
    }
  }

  Map<String, dynamic> getDetails() {
    return {
      "name": _name,
      "email": _email,
      "salary": _salary,
      "masterName": masterName,
    };
  }
}
