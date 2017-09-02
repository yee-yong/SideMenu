//
//  MailsTableViewController.swift
//  SideMenu
//
//  Created by Yee on 08/28/17.
//  Copyright (c) 2017 YY. All rights reserved.
//

import UIKit

class MailsTableViewController: UITableViewController {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        if self.revealViewController() != nil {
            //SWRevealViewController provides the revealToggle: method to handle the expansion and contraction of the sideMenu.
            //set the target of the sideMenu button to the reveal view controller and action to the revealToggle: method. So when the sideMenu button is tapped, it’ll call the revealToggle: method to display the sideMenu
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(self.revealViewController().revealToggle(_:))
            
            //add a pan gesture recognizer
            //swipe right in the content area to activate / reveal the sideMenu, swipe left to hide the sideMenu.
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        //works!
        self.revealViewController().rearViewRevealWidth = 282  //arbitrary width
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MailsTableViewCell
        
        // Configure
        if indexPath.row == 0 {
            cell.senderImageView.image = UIImage(named: "phil")
            cell.senderImageView.clipsToBounds = true
            cell.senderImageView.layer.cornerRadius = cell.senderImageView.frame.size.height / 2.0
            cell.senderNameLabel.text = "Phil Pasta"
            cell.titleOfMailLabel.text = "Afternoon Edition: Palo Alto office clampdown | SJ"
            cell.contentOfMailLabel.text = "Palo Alto set to continue on a new office plan to clampdown abuse of parking spots..."
        }
        else if indexPath.row == 1 {
            cell.senderImageView.image = UIImage(named: "lauren")
            cell.senderImageView.clipsToBounds = true
            cell.senderImageView.layer.cornerRadius = cell.senderImageView.frame.size.height / 2.0
            cell.senderNameLabel.text = "Lauren Spike"
            cell.titleOfMailLabel.text = "Labor Day Fireworks!"
            cell.contentOfMailLabel.text = "Hi everyone, Celebrate Labor Day with family and friends in style and finese..."
        }
        else if indexPath.row == 2 {
            cell.senderImageView.image = UIImage(named: "joe")
            cell.senderImageView.clipsToBounds = true
            cell.senderImageView.layer.cornerRadius = cell.senderImageView.frame.size.height / 2.0
            cell.senderNameLabel.text = "Joe Manor"
            cell.titleOfMailLabel.text = "[ROCKER] (Job) Artificial Intelligence Principal Product Manager (Bay Area)"
            cell.contentOfMailLabel.text = "Hi everyone, My employer, MapData, is hiring for a full time position. If interested please..."
        }
        else if indexPath.row == 3 {
            cell.senderImageView.image = UIImage(named: "bill")
            cell.senderImageView.clipsToBounds = true
            cell.senderImageView.layer.cornerRadius = cell.senderImageView.frame.size.height / 2.0
            cell.senderNameLabel.text = "Bill R Prince"
            cell.titleOfMailLabel.text = "Courage in Chaos"
            cell.contentOfMailLabel.text = "Hi friends, Have you ever wondered why there are so many dissapointemnts in life?"
        }
        else if indexPath.row == 4 {
            cell.senderImageView.image = UIImage(named: "lee")
            cell.senderImageView.clipsToBounds = true
            cell.senderImageView.layer.cornerRadius = cell.senderImageView.frame.size.height / 2.0
            cell.senderNameLabel.text = "Lee Jue Man"
            cell.titleOfMailLabel.text = "Get More Users Downloading"
            cell.contentOfMailLabel.text = "Getting Started With SAO, a Free Guide from your best in class app."
        }
        else if indexPath.row == 5 {
            cell.senderImageView.image = UIImage(named: "lucy")
            cell.senderImageView.clipsToBounds = true
            cell.senderImageView.layer.cornerRadius = cell.senderImageView.frame.size.height / 2.0
            cell.senderNameLabel.text = "Lucy Peters"
            cell.titleOfMailLabel.text = "It's time to make your teeth as white as snow"
            cell.contentOfMailLabel.text = "Time of year is here. Make your appointments quickly and easily with just a click."
        }
        else if indexPath.row == 6 {
            cell.senderImageView.image = UIImage(named: "mimi")
            cell.senderImageView.clipsToBounds = true
            cell.senderImageView.layer.cornerRadius = cell.senderImageView.frame.size.height / 2.0
            cell.senderNameLabel.text = "Mimi J Bordelon"
            cell.titleOfMailLabel.text = "Improve your public speaking"
            cell.contentOfMailLabel.text = "Improve your skills in public speaking through this quick 3 session course, or your money back."
        }
        else if indexPath.row == 7 {
            cell.senderImageView.image = UIImage(named: "sue")
            cell.senderImageView.clipsToBounds = true
            cell.senderImageView.layer.cornerRadius = cell.senderImageView.frame.size.height / 2.0
            cell.senderNameLabel.text = "Sue Lee-Braken"
            cell.titleOfMailLabel.text = "$115,200 for Software Developer in San Francisco"
            cell.contentOfMailLabel.text = "Joe, check out this latest position in SF for a high profile SW company."
        }
        return cell
    }
    
    
    /**
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    **/
    
    /**
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    **/
    
    /**
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
        //
    }
    **/
    
    /**
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    **/
    
    /**
    //MARK - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    **/
}
