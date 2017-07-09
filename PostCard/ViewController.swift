//
//  ViewController.swift
//  PostCard
//
//  Created by Van Leeuwen, Daniel on 7/1/17.
//  Copyright © 2017 Van Leeuwen, Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sendMailButtonPressed(_ sender: UIButton) {
        messageLabel.isHidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.red
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", for: UIControlState.normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

