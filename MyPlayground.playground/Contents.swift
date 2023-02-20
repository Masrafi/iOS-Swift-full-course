import UIKit

func calBMI (weight : Double, height : Double) -> String{
    let bmi = weight / pow(height , 2)
    let shortenBMI = String(format: "%.2f", bmi)
    var interpretation = ""
    if bmi > 25 {
        interpretation = "You are overWeight"
    }
    else if bmi > 18.5 {
        interpretation = "You have a norml weight"
    } else if bmi < 18.5
    {
        interpretation = " You are under weight"
    }
    return "Your BMI is \(shortenBMI) and \(interpretation)"
}

var bmiResult = calBMI (weight : 63, height : 1.8)
print(bmiResult)


