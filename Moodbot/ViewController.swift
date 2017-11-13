//
//  ViewController.swift
//  Moodbot
//
//  Created by Jenni on 2017-11-12.
//  Copyright © 2017 Jenni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NetworkMgr.sharedInstance.sendMessage(msg: "Hello")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

