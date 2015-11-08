//
//  DataCollectionViewController.swift
//  MemeMeV2.0
//
//  Created by Xavier Jorda Murria on 01/11/2015.
//
//

import Foundation

import UIKit

class DataCollectionViewController: UICollectionViewController
{
    let appDelegate = MemeAppDelegate()
    
    var memes: [MemeModel]
    {
        return (UIApplication.sharedApplication().delegate as! MemeAppDelegate).memes
    }
    
    
//    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
//    {
    
//        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CustomMemeCell", forIndexPath: indexPath) as! CustomMemeCell
//        
//        let meme = memes[indexPath.item]
//        
//        cell.setText(meme.top, bottomString: meme.bottom)
//        let imageView = UIImageView(image: meme.image)
//        cell.backgroundView = imageView
//        
//        return cell
//    }
//
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath
//        indexPath: NSIndexPath)
//    {
//            
//            //Grab the DetailVC from Storyboard
//            let object: AnyObject = self.storyboard!.instantiateViewControllerWithIdentifier("VillainDetailVC")
//            let detailVC = object as! VillainDetailViewController
//            
//            //Populate view controller with data from the selected item
//            detailController.villain = self.allVillains[indexPath.row]
//            
//            //Present the view controller using navigation
//            self.navigationController!.pushViewController(detailController, animated: true)
//    }
}