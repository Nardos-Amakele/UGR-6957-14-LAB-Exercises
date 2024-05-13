fun findMax(numbers: List<Int>): Int? {
    return numbers.maxOrNull()
}

fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}

fun calculateAverage(numbers: List<Double>): Double? {
    if (numbers.isEmpty()) {
        return null
    }
    val sum = numbers.sum()
    return sum / numbers.size
}

fun main() {
    println("Enter a list of integers (space-separated):")
    val input = readLine()
    val numbers = input?.split(" ")?.mapNotNull { it.toIntOrNull() }

    if (numbers != null) {
        val max = findMax(numbers)
        println("Maximum value: $max")

        val evenNumbers = filterEvenNumbers(numbers)
        println("Even numbers: $evenNumbers")

        val average = calculateAverage(numbers.map { it.toDouble() })
        println("Average value: $average")
    } else {
        println("Invalid input")
    }
}