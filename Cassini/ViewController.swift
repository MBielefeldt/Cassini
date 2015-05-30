//
//  ViewController.swift
//  Cassini
//
//  Created by Mads Bielefeldt on 30/05/15.
//  Copyright (c) 2015 GN ReSound. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if let imageVC = segue.destinationViewController as? ImageViewController {
            if let identifier = segue.identifier {
                switch identifier {
                    case "Earth":
                        imageVC.imageURL = DemoURL.NASA.Earth
                    case "Cassini":
                        imageVC.imageURL = DemoURL.NASA.Cassini
                    case "Saturn":
                        imageVC.imageURL = DemoURL.NASA.Cassini
                    default:
                        break
                }
                imageVC.title = identifier
            }
        }
    }
}

