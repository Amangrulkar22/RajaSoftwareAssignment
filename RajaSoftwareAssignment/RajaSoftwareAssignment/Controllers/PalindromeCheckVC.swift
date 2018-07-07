//
//  PalindromeCheckVC.swift
//  RajaSoftwareAssignment
//
//  Created by Ashwinkumar Mangrulkar on 07/07/18.
//  Copyright © 2018 Ashwinkumar Mangrulkar. All rights reserved.
//

import UIKit

class PalindromeCheckVC: UIViewController {

    /// Textfield input object
    @IBOutlet weak var txtInput: UITextField!
    
    /// Label output object
    @IBOutlet weak var lblOutput: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /// Check action method to calculate output
    ///
    /// - Parameter sender: button object
    @IBAction func checkAction(_ sender: Any) {
        
        if txtInput.text == "" {
            CustomAlertView.showWarningAlert("Enter value")
        }else {
            self.view.endEditing(true)
            
            if isPalindrome(inputString: txtInput.text!) {
                lblOutput.text = "\(txtInput.text!) - is palindrome"
            }else {
                lblOutput.text = "\(txtInput.text!) - is not a palindrome"
            }
        }
    }
    
    /// Method to check given string is palindrome or not
    ///
    /// - Parameter inputString: input string
    /// - Returns: output bool value
    func isPalindrome(inputString: String) -> Bool {
        let reverseString = String(inputString.reversed())
        if(inputString != "" && inputString == reverseString) {
            return true
        } else {
            return false
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
