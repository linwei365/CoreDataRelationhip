//
//  AddEditViewController.swift
//  CoreDataRelationship
//
//  Created by Lin Wei on 2/26/16.
//  Copyright © 2016 Lin Wei. All rights reserved.
//

import UIKit

class AddEditViewController: UIViewController {
    @IBOutlet weak var dishNameTextField: UITextField!

    @IBOutlet weak var dinningTableTextField: UITextField!
    
    
    @IBOutlet weak var customerCountTextField: UITextField!
    
    
    @IBAction func saveOnClick(sender: AnyObject) {
        
        
 navigationController!.popViewControllerAnimated(true)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
