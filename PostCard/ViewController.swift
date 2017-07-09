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
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sendMailButtonPressed(_ sender: UIButton) {
        messageLabel.isHidden = false
        nameLabel.isHidden = false
        enterNameTextField.resignFirstResponder()
        enterMessageTextField.resignFirstResponder()
        messageLabel.text = enterMessageTextField.text
        nameLabel.text = enterNameTextField.text
        messageLabel.textColor = UIColor.red
        nameLabel.textColor = UIColor.blue
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        
        mailButton.setTitle("Mail Sent", for: UIControlState.normal)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

