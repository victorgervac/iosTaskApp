//
//  EntryViewController.swift
//  Task
//
//  Created by Victor Gervacio on 12/25/24.
//

import UIKit

class EntryViewController: UIViewController ,UITextFieldDelegate{
    
    @IBOutlet var field: UITextField!
    
    var update: (() -> Void)?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(saveTask))// Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveTask()
        return true
    }

    @objc func saveTask(){
        guard let text = field.text , !text.isEmpty else{
            return
        }
        guard let count = UserDefaults().value(forKey: "count") as? Int else {
            return
        }
        
        let newCount = count + 1
        
        UserDefaults().setValue(newCount , forKey: "count")
        UserDefaults().setValue(text , forKey: "task_\(newCount)")
        update?()
        navigationController?.popViewController(animated: true)
    }
 
 

}
