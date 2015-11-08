//
//  DataTabViewController.swift
//  MemeMeV2.0
//
//  Created by Xavier Jorda Murria on 01/11/2015.
//
//

import UIKit

class DataTabViewController: UITableViewController
{
    var memes: [MemeModel]
    {
        return (UIApplication.sharedApplication().delegate as! MemeAppDelegate).memes
    }
    
    // MARK: -
    override func viewDidLoad()
    {
        tableView.reloadData()
    }

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of rows
        return self.memes.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let meme = self.memes[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as? TableCells!
        cell!.memeImage.image = meme.image
        cell!.memeTitle.text = meme.topText
        
        return cell!
    }

}

