//
//  ThirdViewController.swift
//  Segues And Data Pass
//
//  Created by user on 3/2/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var textPassedOver : String?
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = textPassedOver
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}