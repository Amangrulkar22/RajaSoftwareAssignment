//
//  DisplayNumberVC.swift
//  RajaSoftwareAssignment
//
//  Created by Ashwinkumar Mangrulkar on 07/07/18.
//  Copyright © 2018 Ashwinkumar Mangrulkar. All rights reserved.
//

import UIKit

class DisplayNumberVC: UIViewController {

    /// Tableview object
    @IBOutlet weak var tableView: UITableView!
    
    /// String array to hold output
    var outputArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.tableFooterView = UIView()
        
        calculateOutputString()
        tableView.reloadData()
    }
    
    /// Create output according to condition
    func calculateOutputString() {
        
        /// Empty array if already having value
        if outputArray.count > 0 {
            outputArray.removeAll(keepingCapacity: true)
        }
        
        for value in 1...100 {
            if value%3 == 0 && value%5 == 0 {
                outputArray.append(RAJA_SOFTWARE)
            }else if value%3 == 0 {
                outputArray.append(RAJA)
            }else if value%5 == 0 {
                outputArray.append(SOFTWARE)
            }else {
                outputArray.append("\(value)")
            }
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
extension DisplayNumberVC: UITableViewDelegate, UITableViewDataSource {
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

