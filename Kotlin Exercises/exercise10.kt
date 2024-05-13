class BankAccount(private val accountNumber: String, private var balance: Double) {
    fun deposit(amount: Double) {
        balance += amount
        println("Deposited $amount. New balance: $balance")
    }

    fun withdraw(amount: Double) {
        if (amount <= balance) {
            balance -= amount
            println("Withdrawn $amount. New balance: $balance")
        } else {
            println("Insufficient funds. Cannot withdraw $amount. Current balance: $balance")
        }
    }

    fun printBalance() {
        println("Current balance: $balance")
    }
}

fun main() {
    val account = BankAccount("123456789", 1000.0)

    account.deposit(2000.0)
    account.withdraw(500.0)
    account.withdraw(1500.0)
    account.printBalance()
}