//
//  MainViewController.swift
//  CurrentDateAndTime
//
//  Created by Alice Aponasko on 2/8/16.
//  Copyright © 2016 justforfun. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var currentDateAndTimeLabel: UILabel!
    
    let formatter = NSDateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        formatter.dateStyle = .MediumStyle
        formatter.timeStyle = .MediumStyle
        
        currentDateAndTimeLabel.text = currentDateAndTime()
    }
    
    func currentDateAndTime() -> String {
        return formatter.stringFromDate(NSDate())
    }

    @IBAction func refreshButtonTapped(sender: AnyObject) {
        currentDateAndTimeLabel.text = currentDateAndTime()
    }

}

