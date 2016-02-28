//
//  AddEditViewController.swift
//  CoreDataRelationship
//
//  Created by Lin Wei on 2/26/16.
//  Copyright © 2016 Lin Wei. All rights reserved.
//

import UIKit
import CoreData


class AddEditViewController: UIViewController {
    
 
    var moc =  (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    
    
    
    
    
    @IBOutlet weak var dishNameTextField: UITextField!

    @IBOutlet weak var dinningTableTextField: UITextField!
    
    
    @IBOutlet weak var customerCountTextField: UITextField!
    
    
    @IBAction func saveOnClick(sender: AnyObject) {
        
        
       let dish =  NSEntityDescription.insertNewObjectForEntityForName("Dish", inManagedObjectContext: moc) as! Dish
        
        let table =  NSEntityDescription.insertNewObjectForEntityForName("DiningTable", inManagedObjectContext: moc) as! DiningTable
        
        table.tableNumber = dinningTableTextField.text
        table.customerCount = customerCountTextField.text
        
 
 
        dish.dishName = dishNameTextField.text

 
        
        //create too many relationship assgin to dish
        let tableManyRelation = dish.valueForKeyPath("diningTable") as! NSMutableSet
        tableManyRelation.addObject(table)
        dish.diningTable = tableManyRelation
       
        
        //create too many relationship assgin to table this one not needed
        let dishManyRelation =  table.valueForKeyPath("dish") as! NSMutableSet
        dishManyRelation.addObject(dish)
        table.dish = dishManyRelation
        
        
        
        try! moc.save()
        
        
        
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
