//
//  SecondViewController.swift
//  Advanced_Segues
//
//  Created by Charlie Cuddy on 1/5/18.
//  Copyright © 2018 Charlie Cuddy. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {

    var username = "Charlie"
    var activeRow = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(globalVariable)
        print(username)
        print(activeRow + 1)
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
