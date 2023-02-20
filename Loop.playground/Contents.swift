import UIKit

let arrayOfNumber = [1,3,6,4,8,2,5,6,0,9]

var sum = 0

for number in arrayOfNumber {
    sum += number
    //sum = sum + number
    print(sum)
}

for num1 in 1 ... 10 {
    print(num1)
}

for num in 1..<10 where num % 2 == 0 {
    print(num)
}

for num2 in 1...10 where num2 % 3 == 0 {
    print(num2)
}

print("All of sum: \(sum)")

