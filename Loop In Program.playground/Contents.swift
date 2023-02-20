import UIKit

func beerSong(withThisManyBottles totalNumberOfBottles : Int) -> String {
    var lyrics : String = "Masrafi Anam"
    
    for number in (1...totalNumberOfBottles).reversed(){
        let newLine : String = "\n\(6-number)This is some tendi d. dusdhnf ofjfn d. jkjshf s fnjf dlhf"
        lyrics += newLine
        //lyrics = lyrics + newLine
        //print(newLine)
    }
    lyrics += "\n\n\nThis is some tendi d. dusdhnf ofjfnjkjshf s fnjf dlhf"
    return lyrics
}

func beerSong2(_ totalNumberOfBottles : Int) -> String {
    var lyrics : String = "Masrafi Anam"
    
    for number in (1...totalNumberOfBottles).reversed(){
        let newLine : String = "\n\(6-number)This is some tendi d. dusdhnf ofjfn d. jkjshf s fnjf dlhf"
        lyrics += newLine
    }
    lyrics += "\n\n\nThis is some tendi d. dusdhnf ofjfnjkjshf s fnjf dlhf"
    return lyrics
}

print(beerSong(withThisManyBottles: 33))
print(beerSong2(25))
