//
//  ViewController.swift
//  Postcard
//
//  Created by Karl Gonzalez on 1/11/15.
//  Copyright (c) 2015 Karl Gonzalez. All rights reserved.
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Adding a comment here to test commits
        
        //controls message label
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        //name label
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        //message field
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        //name field
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        //mail button
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

