//
//  ViewController.swift
//  TextFieldMysteries
//
//  Created by Gaurav Gupta on 18/04/16.
//  Copyright © 2016 Gaurav Gupta. All rights reserved.
//

import UIKit

class TextFieldVC: UIViewController, UITextFieldDelegate {

	@IBOutlet weak var txtFldName: UITextField!
	@IBOutlet weak var txtfldPassword: UITextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	func textFieldShouldReturn(textField: UITextField) -> Bool {
		print(" In the textFieldShouldReturn")
		if textField == txtFldName {
			txtfldPassword.becomeFirstResponder()
		}
		else{
			textField.resignFirstResponder()
		}
		
		//return true // returning true means process the logic.
		return false //still remains a mystery.
	}
	
	func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
		if textField == txtfldPassword {
			textField.text?.localizedUppercaseString
		}
		return true
	}
	
	
	func textFieldDidBeginEditing(textField: UITextField) {
		print("In textFieldDidBeginEditing")
		textField.text?.capitalizedString
	}
	
	func textFieldDidEndEditing(textField: UITextField) {
		print("In the textFieldDidEndEditing ")
		if textField == txtFldName {
			txtfldPassword.becomeFirstResponder()
		}
	}
}

