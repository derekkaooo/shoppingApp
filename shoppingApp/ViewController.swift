//
//  ViewController.swift
//  shoppingApp
//
//  Created by Derek on 2018/7/20.
//  Copyright © 2018年 Derek. All rights reserved.
//

import UIKit

class ViewController: UIViewController, myTableViewControllerDelegate {

    @IBOutlet weak var myTotal: UILabel!
  
    
    func amount(all:String){
         myTotal.text = all.description
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoview"{
          if let myTable = segue.destination as? myTableViewController{
           myTable.infoFromviewOne = myTotal.text
            myTable.delegate = self
            }
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

