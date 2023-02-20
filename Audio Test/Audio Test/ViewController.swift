//
//  ViewController.swift
//  Audio Test
//
//  Created by user on 2/18/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player : AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func musicButton(_ sender: UIButton) {
        playSound()
    }
    func playSound() {
        let url = Bundle.main.url(forResource: "audio", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
}

