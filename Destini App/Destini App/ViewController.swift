//
//  ViewController.swift
//  Destini App
//
//  Created by user on 2/18/23.
//

import UIKit

class ViewController: UIViewController {
    
    let story1 = "This is Story one, This is Story one, This is Story one, This is Story one."
    let answer1a = "This answer one"
    let answer1b = "This answer one"
    
    let story2 = "This is Story two, This is Story one, This is Story one, This is Story one."
    let answer2a = "This answer two a"
    let answer2b = "This answer two b"
    
    let story3 = "This is Story three, This is Story one, This is Story one, This is Story one."
    let answer3a = "This answer three a"
    let answer3b = "This answer three b"
    
    let story4 = "This is Story four, This is Story one, This is Story one, This is Story one."
    let answer4a = "This answer four a"
    let answer4b = "This answer four b"
    
    let story5 = "This is Story five, This is Story one, This is Story one, This is Story one."
    let answer5a = "This answer five a"
    let answer5b = "This answer five b"
    
    let story6 = "This is Story six, This is Story one, This is Story one, This is Story one."
    let answer6a = "This answer six a"
    let answer6b = "This answer six"
    
    

    @IBOutlet weak var storyTextView: UILabel!
    
    
    @IBOutlet weak var topButton: UIButton!
    
    @IBOutlet weak var bottomButton: UIButton!
    
    @IBOutlet weak var restartFirst: UIButton!
    
    var storyIndex = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restart()
        
        restartFirst.isHidden = true
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        print(sender.tag)
        print(storyIndex)
        if sender.tag == 1 && storyIndex == 1 {
            storyTextView.text = story3
            topButton.setTitle(answer3a, for: .normal)
            bottomButton.setTitle(answer3b  , for: .normal)
            storyIndex = 2
        }else if sender.tag == 1 && storyIndex == 3{
            storyTextView.text = story6
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 6
        }else if sender.tag == 1 && storyIndex == 2{
            storyTextView.text = story3
            topButton.setTitle(answer3a, for: .normal)
            bottomButton.setTitle(answer3b, for: .normal)
            storyIndex = 3
        }else if sender.tag == 2 && storyIndex == 3{
            storyTextView.text = story5
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 5
        }else if sender.tag == 2 && storyIndex == 1{
            storyTextView.text = story2
            topButton.setTitle(answer2a, for: .normal)
            bottomButton.setTitle(answer2b, for: .normal)
            storyIndex = 2
        }else if sender.tag == 2 && storyIndex == 2{
            storyTextView.text = story4
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 4
        }else {
            
        }
        
        if  storyIndex == 4 ||  storyIndex == 5 ||  storyIndex == 6 {
            
            restartFirst.isHidden = false
           
    
        }
    }
    
    @IBAction func restartButton(_ sender: UIButton) {
        topButton.isHidden = false
        bottomButton.isHidden = false
        restart()
        
        
    }
    
    func restart() {
        storyIndex = 1
        storyTextView.text = story1
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
    }
}

