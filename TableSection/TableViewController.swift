//
//  ViewController.swift
//  TableSection
//
//  Created by qingjiezhao on 7/4/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
    struct  Objects{
        var sectionName : String!
        
        var sectionObjects : [String]!
        
    }
    
    var objectsArray = [Objects]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        objectsArray = [
            Objects(sectionName:"Section 1",sectionObjects:["aaa","bbb","ccc","ddd","eee"]),
            Objects(sectionName:"Section 2",sectionObjects:["aaa","bbb","ccc","ddd","eee"]),
            Objects(sectionName:"Section 3",sectionObjects:["aaa","bbb","ccc","ddd","eee"]),
            Objects(sectionName:"Section 4",sectionObjects:["aaa","bbb","ccc","ddd","eee"])
        ]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
        
        cell.textLabel?.text = objectsArray[indexPath.section].sectionObjects[indexPath.row]
        
        return cell
        
        
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objectsArray[section].sectionObjects.count
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return objectsArray.count
    }

    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return objectsArray[section].sectionName
    }
    
    
}

