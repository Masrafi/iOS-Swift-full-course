//
//  SecondViewController.swift
//  Segues And Data Pass
//
//  Created by user on 3/2/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var testField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonPressedTwo(_ sender: Any) {
        performSegue(withIdentifier: "third", sender: self)
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "third" {
            let destinationVC = segue.destination as! ThirdViewController
            destinationVC.textPassedOver = testField.text!
        }
    }

}
