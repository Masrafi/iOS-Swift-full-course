import UIKit

func loveCalculator (yourName: String, theirName: String) ->
    String {
        
        
    let loveScore = arc4random_uniform(101)
    
    if loveScore > 80 {
        return "You love s \(loveScore) each other like Kanye loves Kanye"
    }
    else if loveScore>40 && loveScore<=80{
        return " Your love score is \(loveScore). You go together"
    }
    else {
        return "No love possible, you'll be forever alone! your love score is \( loveScore)"
    }
    
    //return loveScore
}

print(loveCalculator (yourName: "Masrafi", theirName: "Unknown")
)
