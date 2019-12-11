//
//  AddTaskViewController.swift


// StudentID:301089444
// Assignment Name: ToDo Application
//
//  Created by Deepshi on 2019-12-04.
//  Copyright © 2019 Deepshi. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    
    @IBOutlet weak var isImp: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnTapped(_ sender: Any) {
        
    let context =  (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = textField.text!
        task.isimportant = isImp.isOn
        
        //Save the data to coredata
        
        (UIApplication.shared.delegate as!AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
        
    }
    

    @IBAction func Cancel(_ sender: Any) {
    }
    
    
}
