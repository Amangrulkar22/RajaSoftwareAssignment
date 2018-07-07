//
//  MultiplicationOfNumberVC.swift
//  RajaSoftwareAssignment
//
//  Created by Ashwinkumar Mangrulkar on 07/07/18.
//  Copyright © 2018 Ashwinkumar Mangrulkar. All rights reserved.
//

import UIKit

class MultiplicationOfNumberVC: UIViewController {

    /// Tableview object
    @IBOutlet weak var tableView: UITableView!
    
    /// Textfield input object
    @IBOutlet weak var txtInput: UITextField!
    
    /// String array to hold output
    var outputArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.tableFooterView = UIView()
    }

    @IBAction func calculateAction(_ sender: Any) {

        if txtInput.text == "" {
            CustomAlertView.showWarningAlert("Enter value")
        }else {
            self.view.endEditing(true)
            
            calculateMultiplicationTable(textInput: txtInput.text!)
            tableView.reloadData()
        }
    }
    
    /// Calculate multiplication table and store in array
    ///
    /// - Parameter text: Input value
    func calculateMultiplicationTable(textInput: String) {
        
        // Empty array for already have value
        if outputArray.count > 0 {
            outputArray.removeAll(keepingCapacity: true)
        }
        
        for value in 1...10 {
            //print("\(value) x \(Int(inputValue)!) = \(value*Int(inputValue)!)")
            let calculatedValue = "\(value) x \(Int(textInput)!) = \(value*Int(textInput)!)"
            outputArray.append(calculatedValue)
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

//MARK:- Tableview delegate methods
extension MultiplicationOfNumberVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return outputArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = outputArray[indexPath.row]
        
        return cell
    }
}
