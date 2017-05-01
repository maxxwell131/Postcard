//
//  ViewController.swift
//  Postcard
//
//  Created by admin on 4/21/17.
//  Copyright © 2017 MyOrganization. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var massageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet var massageLabelRev: UIView!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(_ sender: UIButton) {
        massageLabel.isHidden = false
        massageLabel.text = enterMessageTextField.text
        massageLabel.textColor = UIColor.red
        enterMessageTextField.text = ""
        
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", for: UIControlState.normal)
}

}
