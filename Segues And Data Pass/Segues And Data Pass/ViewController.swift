//
//  ViewController.swift
//  Segues And Data Pass
//
//  Created by user on 3/2/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressedOne(_ sender: Any) {
    
        performSegue(withIdentifier: "second", sender: self)
    }
}

