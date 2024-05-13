fun main() {
    println("Enter a string:")
    val inputString = readLine()

    if (inputString != null) {
        if (inputString.isNotEmpty()) {
            var minChar = inputString[0].toInt()
            var maxChar = inputString[0].toInt()

            for (char in inputString) {
                val charValue = char.toInt()
                if (charValue < minChar) {
                    minChar = charValue
                }
                if (charValue > maxChar) {
                    maxChar = charValue
                }
            }

            println("Minimum character: ${minChar.toChar()}")
            println("Maximum character: ${maxChar.toChar()}")
        } else {
            println("Input string is empty")
        }
    } else {
        println("Invalid input")
    }
}