//
//  DisplayBinaryNumberVC.swift
//  RajaSoftwareAssignment
//
//  Created by Ashwinkumar Mangrulkar on 07/07/18.
//  Copyright © 2018 Ashwinkumar Mangrulkar. All rights reserved.
//

import UIKit

class DisplayBinaryNumberVC: UIViewController {

    /// Textfield input object
    @IBOutlet weak var txtInput: UITextField!
    
    /// Label output object
    @IBOutlet weak var lblOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    /// Check action method
    ///
    /// - Parameter sender: button object
    @IBAction func checkAction(_ sender: Any) {
        
        if txtInput.text == "" {
            CustomAlertView.showWarningAlert("Enter value")
        }else {
            self.view.endEditing(true)
            
            let value = convertDesimalToBinary(inputValue: txtInput.text!)
            lblOutput.text = "Binary value of \(txtInput.text!) is - \(value)"
        }
    }
    
    /// Method to convert desimal number to binary number
    ///
    /// - Parameter inputValue: desimal number string
    /// - Returns: output string
    func convertDesimalToBinary(inputValue: String) -> String {
        let tempValue = Int(inputValue)!
        let binaryValue = String(tempValue, radix: 2)
        return binaryValue
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
