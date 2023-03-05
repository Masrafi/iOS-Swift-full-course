//
//  SecondViewController.swift
//  Delegates and Protocols
//
//  Created by user on 3/4/23.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var textFieldTwo: UITextField!
    
    var data = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTwo.text = data
        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonTwo(_ sender: Any) {
        performSegue(withIdentifier: "secondTwo", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondTwo" {
            let secondVCTwo = segue.destination as! ViewController
            secondVCTwo.dataBack = textFieldTwo.text!
        }
    }
}
