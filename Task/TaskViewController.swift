//
//  TaskViewController.swift
//  Task
//
//  Created by Victor Gervacio on 12/25/24.
//

import UIKit

class TaskViewController: UIViewController {
    @IBOutlet var label: UILabel!
    var task: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = task
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title:"Delete",style: .done,target: self,action: #selector(deleteTask))

    }
    
    @objc func deleteTask(){
        print("delete")
    }

}
