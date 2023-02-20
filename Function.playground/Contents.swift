import UIKit

// Creating the getMilk() function
func getMilkOne() {
    print("go to the shop")
    print("buy 2 cartons of milk")
    print("pay $2")
    print("come hme")
}

func getMilk(howManyMilkCartons : Int) {
    print(howManyMilkCartons)
    print("buy \(howManyMilkCartons) cartons of milk")
    
    let priceToPay = howManyMilkCartons * 2
    print("pay $\(priceToPay)")
}
//func getMilkTwo(howMany : Int) {
// return howMany
//}

func getSecond (howMany: Int, howMany1 : Int) -> Int {
    print("Go to the shops")
    print("buy \(howMany) cartoons of milk")
    
    return howMany * howMany1
}







// calling the getMilk() funcion
getMilkOne()
getMilk(howManyMilkCartons: 5)
getMilk(howManyMilkCartons: 100)
getMilk(howManyMilkCartons: 200)
//getMilkTwo(howMany: 000)

//print(getSecond(howMany: 9))
var store = getSecond(howMany: 9, howMany1: 8)
print("This is Masrafi \(store)")
