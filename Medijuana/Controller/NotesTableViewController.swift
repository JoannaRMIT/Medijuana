//
//  SearchTableViewController.swift
//  Medijuana
//
//  Created by Joanna Ingram on 19/10/19.
//  Copyright © 2019 Joanna Ingram. All rights reserved.
//
//

import UIKit

// This class inherits from UITableViewController
// Where is the protocol?
class NotesTableViewController: UITableViewController {
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Moves the header section down so that it doesn't
        // sit up in the status bar
        self.tableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        
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
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }
    
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        
        return "Section \(section + 1)"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        // Access the default properties of the prototype cell
        // Must set you prototype cell be display the subtitle
        // in storyboard
        //         cell.textLabel?.text = String(indexPath.item + 1)
        //         cell.detailTextLabel?.text = "Insert your subtitle here"
        
        // Alternatively you can drag items into the prototype cell
        // on your storyboard.  You can't create outlets for repeating
        // elements so instead you tag them in the storyboard with the
        // tag property, you can then programatically access them.
        
        // In Interface Builder, change the prototype cell to custom
        // Add your elements and provide tag numbers
        // Reference them in your code.
        let label = cell.viewWithTag(1000) as! UILabel
        let label1 = cell.viewWithTag(1001) as! UILabel
        label.text = "Row: "
        label1.text = String(indexPath.item + 1)
        
        return cell
    }
}
