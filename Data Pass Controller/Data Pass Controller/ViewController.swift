//
//  ViewController.swift
//  Data Pass Controller
//
//  Created by user on 3/5/23.
//

import UIKit

class ViewController: UIViewController, CanReceive {

    @IBOutlet weak var textFieldOne: UITextField!
    @IBOutlet weak var labelOne: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressedOne(_ sender: Any) {
        performSegue(withIdentifier: "second", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "second" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textFieldOne.text!
            secondVC.delegate = self
        }
    }
    func dataReceived(data: String) {
        labelOne.text = data
    }
}

