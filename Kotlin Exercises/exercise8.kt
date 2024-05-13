fun generateRandomPassword(length: Int): String {
    val allowedChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_-+=<>?"
    val passwordBuilder = StringBuilder()

    for (i in 0 until length) {
        val randomIndex = (Math.random() * allowedChars.length).toInt()
        val randomChar = allowedChars[randomIndex]
        passwordBuilder.append(randomChar)
    }

    return passwordBuilder.toString()
}

fun main() {
    val passwordLength = 8
    val password = generateRandomPassword(passwordLength)
    println("Generated Password: $password")
}