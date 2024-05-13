fun main() {
    val Price = 100.0 
    val discount = 0.6 
    val Threshold = 0.5 
    
    val finalDiscount = if (discount > Threshold) {
        
        Threshold
    } else {
        discount
    }

 
    val finalPrice = Price * (1 - finalDiscount)

    println("Original price: $Price")
    println("Discount: ${finalDiscount * 100}%")
    println("Price after discount : $finalPrice")
}