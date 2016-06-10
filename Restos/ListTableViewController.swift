//
//  ListTableViewController.swift
//  Restos
//
//  Created by Ludovic Ollagnier on 09/06/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

// https://github.com/tec-tec/ib-paris-swift

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let notCenter = NSNotificationCenter.defaultCenter()
        notCenter.addObserverForName(Constants.Notifications.modelUpdatedNotifName, object: nil, queue: nil) { (notif) in
            self.tableView.reloadData()
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return RestaurantLibrary.sharedInstance.allRestaurants.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Resto", forIndexPath: indexPath)

        // Configure the cell...
        let currentResto = RestaurantLibrary.sharedInstance.allRestaurants[indexPath.row]
        cell.textLabel?.text = currentResto.name
        cell.detailTextLabel?.text = currentResto.address

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.

        if segue.identifier == "showDetails" {

            guard let dest = segue.destinationViewController as? RestaurantDetailsViewController else { return }

            //Ne pas setter les outlets !!!!!
//            dest.restoNameLabel.text = "eg"

            let indexPath = tableView.indexPathForSelectedRow

            let cell = sender as! UITableViewCell
            let indexpath2 = tableView.indexPathForCell(cell)

            dest.currentResto = RestaurantLibrary.sharedInstance.allRestaurants[indexpath2!.row]
        }
    }


}
