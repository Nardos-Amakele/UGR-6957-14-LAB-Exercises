fun convertToUppercase(strings: List<String>): List<String> {
    return strings.map { it.toUpperCase() }
}

fun filterNumbersGreaterThan(numbers: List<Int>, value: Int): List<Int> {
    return numbers.filter { it > value }
}

fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { acc, num -> acc + num }
}

fun main() {
    val strings = listOf("Nardos", "Amakele", "Demissie")
    val uppercaseStrings = convertToUppercase(strings)
    println("Uppercase strings: $uppercaseStrings")

    val numbers = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    val filteredNumbers = filterNumbersGreaterThan(numbers, 5)
    println("Filtered numbers: $filteredNumbers")

    val sum = calculateSum(numbers)
    println("Sum of numbers: $sum")
}