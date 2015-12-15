//
//  SettingsViewController.swift
//  tips
//
//  Created by XXY on 15/12/10.
//  Copyright © 2015年 XXY. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // load
        let defaults = NSUserDefaults.standardUserDefaults()
        let stringValue = defaults.objectForKey("some_key_that_you_choose") as! String
        let intValue = defaults.integerForKey("another_key_that_you_choose")
        
        // save
        defaults.setObject("some_string_to_save", forKey: "some_key_that_you_choose")
        defaults.setInteger(123, forKey: "another_key_that_you_choose")
        defaults.synchronize()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
