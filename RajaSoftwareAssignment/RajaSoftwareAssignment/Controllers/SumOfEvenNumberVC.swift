//
//  SumOfEvenViewController.swift
//  RajaSoftwareAssignment
//
//  Created by Ashwinkumar Mangrulkar on 07/07/18.
//  Copyright © 2018 Ashwinkumar Mangrulkar. All rights reserved.
//

import UIKit

class SumOfEvenViewController: UIViewController {
    
    @IBOutlet weak var lblOutput: UILabel!
    
    let numberArray = [10, 9, 7, 6, 3, 5, 3, 4, 8]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblOutput.text = "Output - \(calculateEvenNumberSum())"
    }
    
    /// Calculate additiion of even number
    ///
    /// - Returns: calculated result
    func calculateEvenNumberSum() -> Int {
        var calculatedValue = 0
        for value in numberArray {
            if value % 2 == 0 {
                calculatedValue+=value
            }
        }
        return calculatedValue
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
