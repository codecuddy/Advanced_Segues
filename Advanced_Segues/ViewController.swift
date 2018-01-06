//
//  ViewController.swift
//  Advanced_Segues
//
//  Created by Charlie Cuddy on 1/4/18.
//  Copyright © 2018 Charlie Cuddy. All rights reserved.
//

import UIKit

let globalVariable = "global"

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // print(SecondViewController.username)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondViewController" {
            
            let secondViewController = segue.destination as! SecondViewController
            
            secondViewController.username = "Dylan"
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

