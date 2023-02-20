import UIKit

//Fibonacci Numbers
//0,1,1,2,3,5,8


func fibonacci (until n: Int) {
    print(0)
    print(1)
    
    var num1 = 0
    var num2 = 1
    
    
    for iteration in 0...n {
        let num = num1 + num2
        print(num)
        num1 = num2
        num2 = num
        
    }
    
    //or
    
//    for _ in 0...n {
//        let num = num1 + num2
//        num1 = num2
//        num2 = num
//        print(num)
//    }
}

fibonacci(until: 3)
