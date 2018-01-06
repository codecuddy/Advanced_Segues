//
//  ViewController.swift
//  Advanced_Segues
//
//  Created by Charlie Cuddy on 1/4/18.
//  Copyright © 2018 Charlie Cuddy. All rights reserved.
//

import UIKit

let globalVariable = "global"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var activeCell = 1

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = "Row \(String(indexPath.row + 1))"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        activeCell = indexPath.row
        performSegue(withIdentifier: "toSecondViewController", sender: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // print(SecondViewController.username)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondViewController" {
            
            let secondViewController = segue.destination as! SecondViewController
            
            secondViewController.username = "Dylan"
            secondViewController.activeRow = activeCell
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

