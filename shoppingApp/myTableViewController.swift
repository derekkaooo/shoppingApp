//
//  myTableViewController.swift
//  shoppingApp
//
//  Created by Derek on 2018/7/20.
//  Copyright © 2018年 Derek. All rights reserved.
//

import UIKit

protocol myTableViewControllerDelegate {
    func amount(all:String)
}

class myTableViewController: UITableViewController {
    var first:Int = 0
    var second:Int = 0
    var third:Int = 0
    var total:Int = 0
    var delegate:myTableViewControllerDelegate?
    
    @IBOutlet weak var QtyOne: UILabel!
    @IBOutlet weak var QtyTwo: UILabel!
    @IBOutlet weak var QtyThree: UILabel!
    
    
    @IBAction func fistStepper(_ sender: UIStepper) {
        QtyOne.text = "Qty:" + "\(Int(sender.value))"
        first = Int(sender.value) * 402995
        total = first + second + third
        var totalString = "Total:" + "\(total)"
        delegate?.amount(all: totalString)
    }
    
    @IBAction func secondStepper(_ sender: UIStepper) {
        QtyTwo.text = "Qty:" + "\(Int(sender.value))"
        second = Int(sender.value) * 203295
        total = first + second + third
        var totalString2 = "Total:" + "\(total)"
        delegate?.amount(all: totalString2)
    }
    
    @IBAction func thirdStepper(_ sender: UIStepper) {
        QtyThree.text = "Qty:" + "\(Int(sender.value))"
        third = Int(sender.value) * 200000
        total = first + second + third
        var totalString3 = "Total:" + "\(total)"
        delegate?.amount(all: totalString3)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
