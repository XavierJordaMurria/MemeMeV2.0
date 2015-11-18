//
//  DetailViewController.swift
//  MemeMeV2.0
//
//  Created by Xavier Jorda Murria on 17/11/2015.
//
//

import UIKit

class DetailViewController: UIViewController
{
    var memes: [MemeModel]
    {
            return (UIApplication.sharedApplication().delegate as! MemeAppDelegate).memes
    }
    
    var currentIndex: Int = 0
    
    @IBOutlet weak var memeImage: UIImageView!
    
    override func viewWillAppear(animated: Bool)
    {
        memeImage.image = memes[currentIndex].memeImage
    }
}

