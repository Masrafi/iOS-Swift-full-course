//
//  ViewController.swift
//  Delegates and Protocols
//
//  Created by user on 3/4/23.
//

import UIKit

class ViewController: UIViewController {
    var dataBack = ""
    @IBOutlet weak var textFieldOne: UITextField!
    @IBOutlet weak var lebelOne: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lebelOne.text = dataBack
    }

    @IBAction func buttonPressedOne(_ sender: Any) {
        performSegue(withIdentifier: "secondOne", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondOne" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textFieldOne.text!
        }
    }
}

