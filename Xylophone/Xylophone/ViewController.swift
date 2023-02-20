//
//  ViewController.swift
//  Xylophone
//
//  Created by user on 2/17/23.
// helping video
//https://www.youtube.com/watch?v=8NsVZr2DvAs&ab_channel=AppShap

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    var player: AVAudioPlayer?
    let soundArray = ["A", "B", "C", "D", "E", "F", "G"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func onPressed1(_ sender: UIButton) {
        
        let selectedSoundFineName : String = soundArray[(sender.tag)]
        print(selectedSoundFineName)
        playSound(soundCollection: selectedSoundFineName)
    }
    func playSound(soundCollection : String) {
        let url = Bundle.main.url(forResource: soundCollection, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
}
