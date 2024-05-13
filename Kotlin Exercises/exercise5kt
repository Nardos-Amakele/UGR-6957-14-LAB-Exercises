fun analyzeString(input: String): Triple<Int, Int, Int> {
    val wordsCount = input.split(Regex("\\s+")).size
    val uppercaseCount = input.count { it.isUpperCase() }
    val vowelsCount = input.count { it.toLowerCase() in "aeiou" }

    return Triple(wordsCount, uppercaseCount, vowelsCount)
}

fun main() {
    println("Enter a string:")
    val inputString = readLine()

    if (inputString != null) {
        val (words, uppercase, vowels) = analyzeString(inputString)

        println("Number of words: $words")
        println("Number of uppercase letters: $uppercase")
        println("Number of vowels: $vowels")
    } else {
        println("No input")
    }
}