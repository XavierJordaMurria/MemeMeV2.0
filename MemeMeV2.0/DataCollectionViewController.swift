//
//  DataCollectionViewController.swift
//  MemeMeV2.0
//
//  Created by Xavier Jorda Murria on 01/11/2015.
//
//

import UIKit

class DataCollectionViewController: UICollectionViewController
{
    var collMemes: [MemeModel]
    {
        return (UIApplication.sharedApplication().delegate as! MemeAppDelegate).memes
    }
    private let reuseIdentifier = "cell"
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    
//    [self.myCollectionViewFlowLayout setItemSize:CGSizeMake(320, 548)];
    
    var currentIntdex: Int? = nil
    
    // MARK: -    
    override func viewWillAppear(animated: Bool)
    {
        collectionView?.reloadData()
    }
    
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
    {
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return (UIApplication.sharedApplication().delegate as! MemeAppDelegate).memes.count
    }
    
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        print("cellForItemAtIndexPath index => \(indexPath.row)")
        let meme = self.collMemes[indexPath.row]
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as? CustomCollectionCell

        // Configure the cell
        cell?.memeColl.image = meme.memeImage
        
        return cell!
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        let cell = collectionView.cellForItemAtIndexPath(indexPath)
        cell!.layer.borderWidth = 2.0
        cell!.layer.borderColor = UIColor.grayColor().CGColor
        
        currentIntdex = indexPath.row
        self.performSegueWithIdentifier("collVC2MainVC", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!)
    {
        if segue.identifier == "collVC2MainVC"
        {
            // Create a new variable to store the instance of PlayerTableViewController
            let destinationVC = segue.destinationViewController as! MainMemeViewController
            
            if let index = currentIntdex?.bigEndian
            {
                destinationVC.comingFromDataView = (true,index)
            }
        }
    }

}