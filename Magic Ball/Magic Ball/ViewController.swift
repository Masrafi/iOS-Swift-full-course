//
//  ViewController.swift
//  Magic Ball
//
//  Created by user on 2/16/23.
//

import UIKit

class ViewController: UIViewController {
    var randomButton : Int = 0
    let ballArray = [
    "ball1", "ball2", "ball3", "ball4", "ball5"
    ]
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClick(_ sender: UIButton) {
        randomButton = Int.random(in: 0 ... 4)
        
        imageView.image = UIImage(named: ballArray[randomButton])
    }
    
}

