fun main() {
    println("Enter a  grade between 0 and 100:")
    val Inputgrade = readLine()?.toDoubleOrNull()

    if (Inputgrade != null && Inputgrade >= 0 && Inputgrade <= 100) {
        val grade = when {
            Inputgrade >= 90 -> "A"
            Inputgrade >= 80 -> "B"
            Inputgrade >= 70 -> "C"
            Inputgrade >= 60 -> "D"
            else -> "F"
        }

        println("Grade: $grade")
    } else {
        println("Invalid input")
    }}