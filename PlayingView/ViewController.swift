//
//  ViewController.swift
//  PlayingView
//
//  Created by Sureshbabu Naidu on 21/01/17.
//  Copyright © 2017 Vishwak Sol pvt. ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func shwoView(_ sender: Any) {
        let customViewObj = CustomView(frame: CGRect(x: 0, y: self.view.frame.size.height - 50, width: self.view.frame.size.width, height: 50))
        customViewObj.showInView(status: "Playing....")
    }

    @IBAction func hideView(_ sender: Any) {
        for view in UIApplication.shared.keyWindow!.subviews{
            if view.tag == 9999{
                view .removeFromSuperview()
            }
        }
    }

}

