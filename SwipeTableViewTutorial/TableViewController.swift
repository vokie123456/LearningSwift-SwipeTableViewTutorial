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
    
    override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        
        let shareAction = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Share", handler: { (action: UITableViewRowAction!, indexPath: NSIndexPath!) -> Void in
        
            let shareMenu = UIAlertController(title: nil, message: "Share using", preferredStyle: .ActionSheet)
        
            let twitterAction = UIAlertAction(title: "Twitter", style: UIAlertActionStyle.Default, handler: nil)
        
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
        
            shareMenu.addAction(twitterAction)
            shareMenu.addAction(cancelAction)
            
            self.presentViewController(shareMenu, animated: true, completion: nil)
        })
    
        let rateAction = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Rate", handler: { (action: UITableViewRowAction!, indexPath: NSIndexPath!) -> Void in
        
            let rateMenu = UIAlertController(title: nil, message: "Rate this App", preferredStyle: .ActionSheet)
            
            let appRateAction = UIAlertAction(title: "Rate", style: UIAlertActionStyle.Default, handler: nil)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
            
            rateMenu.addAction(appRateAction)
            rateMenu.addAction(cancelAction)
            
            self.presentViewController(rateMenu, animated: true, completion: nil)
        })
        
        return [shareAction, rateAction]
    }
}
