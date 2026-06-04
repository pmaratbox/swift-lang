struct Account {
    private var balance: Int

    init(_ initial: Int) { balance = initial }

    mutating func deposit(_ amount: Int) { balance += amount }

    func getBalance() -> Int { balance }
}

var account = Account(100)
account.deposit(50)
print(account.getBalance())
