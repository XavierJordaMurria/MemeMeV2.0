//
//  DataTabViewController.swift
//  MemeMeV2.0
//
//  Created by Xavier Jorda Murria on 01/11/2015.
//
//

import UIKit

class DataTabViewController: UITableViewController, UINavigationControllerDelegate
{
    var memes: [MemeModel]
    {
        return (UIApplication.sharedApplication().delegate as! MemeAppDelegate).memes
    }

    var currentIntdex: Int? = nil
    
    // MARK: -
    override func viewWillAppear(animated: Bool)
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
        cell!.memeImage.image = meme.memeImage
        cell!.memeTitle.text = meme.topText
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        currentIntdex = indexPath.row
        self.performSegueWithIdentifier("tab2DetailsView", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!)
    {
        if segue.identifier == "tab2DetailsView"
        {
            // Create a new variable to store the instance of PlayerTableViewController
            let destinationVC = segue.destinationViewController as! DetailViewController
            
            if let index = currentIntdex?.bigEndian
            {
                destinationVC.currentIndex = index
            }
        }
    }
}

