//
//  PhotoViewController.swift
//  SideMenu
//
//  Created by Yee on 08/28/17.
//  Copyright (c) 2017 YY. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    
    @IBOutlet weak var menuButton:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            //SWRevealViewController provides the revealToggle: method to handle the expansion and contraction of the sideMenu.
            //set the target of the sideMenu button to the reveal view controller and action to the revealToggle: method. So when the sideMenu button is tapped, it’ll call the revealToggle: method to display the sideMenu
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(self.revealViewController().revealToggle(_:))
            
            //add a pan gesture recognizer
            //swipe right in the content area to activate / reveal the sideMenu, swipe left to hide the sideMenu.
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /**
    //MARK - Navigation
     
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    **/
    
}
