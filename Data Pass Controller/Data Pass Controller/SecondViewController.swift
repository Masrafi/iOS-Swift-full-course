//
//  SecondViewController.swift
//  Data Pass Controller
//
//  Created by user on 3/5/23.
//

import UIKit

protocol CanReceive {
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {
    var data = ""
    var delegate : CanReceive?
    @IBOutlet weak var textFieldTwo: UITextField!
    @IBOutlet weak var labelTwo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTwo.text = data
        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonPressedTwo(_ sender: Any) {
        delegate?.dataReceived(data: textFieldTwo.text!)
        dismiss(animated: true, completion: nil)
    }
}
