//
//  ViewController.swift
//  Postcard
//
//  Created by Dominique Tillman on 9/13/14.
//  Copyright (c) 2014 Dominique Tillman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var MessageLabel: UILabel!
	@IBOutlet weak var NameLabel: UITextField!
	@IBOutlet weak var MessageInput: UITextField!
	@IBOutlet weak var theButton: UIButton!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	@IBAction func buttonPressed(sender: UIButton) {
		MessageLabel.hidden=false;//changing the message label status to false.
		MessageLabel.text = MessageInput.text;
		MessageInput.text="";
		MessageLabel.textColor = UIColor.redColor();MessageInput.resignFirstResponder();
	
		theButton.setTitle("Confirmed.", forState: UIControlState.Normal);
	}
}

