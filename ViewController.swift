//
//  ViewController.swift
//  Sample Program
//
//  Created by Oran Mcnair on 07/06/2016.
//  Copyright © 2016 Teddy Bear Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet var segment: UISegmentedControl!
    
    @IBOutlet var label: UILabel!
    
    @IBAction func pageButton(sender: AnyObject) {
        switch segment.selectedSegmentIndex {
        case 0:
            let page1 = self.storyboard!.instantiateViewControllerWithIdentifier("page1Identifier") as! Page1Controller
            self.navigationController?.pushViewController(page1, animated: true)
            
        case 1:
            let page2 = self.storyboard!.instantiateViewControllerWithIdentifier("page2Identifier") as! Page2Controller
            self.navigationController?.pushViewController(page2, animated: true)
            
        default:
            break
        }
    }
}

class Page1Controller: UIViewController {
    
}

class Page2Controller: UIViewController {
    
}