//
//  TableViewController.swift
//  Parentes
//
//  Created by Matthew Curtner on 12/14/15.
//  Copyright © 2015 Matthew Curtner. All rights reserved.
//

import UIKit
import Kanna

class TableViewController: UITableViewController {

    var listedItemsArray: [String] = []
    var allContentArray: [String] = []
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        listedItemsArray.append("OK")
        
        let url = NSURL(string: "http://www.parentes.cz/zakladni-skola-parentes-praha.html")
        let html: NSString = try! NSString(contentsOfURL: url!, encoding: NSUTF8StringEncoding)
        
        if let doc = Kanna.HTML(html: html as String, encoding: NSUTF8StringEncoding) {
            
            // Search for nodes by XPath
            for link in doc.xpath("//article//h3") {
                print(link.text!)
                listedItemsArray.append(link.text!)
            }
            
            for link in doc.xpath("//article//p") {
                print(link.text!)
                allContentArray.append(link.text!)
            }
            
            
            print(listedItemsArray.count)
            
            print(allContentArray.count)
            
            //            for node in doc.css("h2") {
            //                print(node.text)
            //            }
            //
            //
            //            for node in doc.css("event") {
            //                print(node.text)
            //            }
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listedItemsArray.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        // Configure the cell...
        cell.textLabel?.text = listedItemsArray[indexPath.row]

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
        
        let vc = segue.destinationViewController as! DetailsViewController
        let indexPath = tableView.indexPathForSelectedRow!
        
        print(indexPath)
        
        vc.passedString = allContentArray[indexPath.row]
    }



}
