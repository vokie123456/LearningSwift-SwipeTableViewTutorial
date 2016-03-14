//
//  TableViewController.swift
//  SwipeTableViewTutorial
//
//  Created by Jonathan Chiam on 14/3/16.
//  Copyright © 2016 Jonathan Chiam. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let apps = ["Minecraft", "Facebook", "Tweetbot", "Instagram"]
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apps.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = apps[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        
    }
}
