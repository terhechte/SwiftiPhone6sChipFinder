//
//  ViewController.swift
//  ChipFinder
//
//  Created by Benedikt Terhechte on 30/09/15.
//  Copyright © 2015 Benedikt Terhechte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let chipInfo = MGCopyAnswer("HardwarePlatform")
            else { fatalError("Could not read hardware") }
        
        switch chipInfo.takeRetainedValue() as? String {
            case "s8000"?:
            self.label.text = "Samsung"
            case "s8003"?:
            self.label.text = "TSMC"
        default:
            self.label.text = "Unknown"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

