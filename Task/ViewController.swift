//
//  ViewController.swift
//  Task
//
//  Created by Victor Gervacio on 12/21/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tabelView: UITableView!
    var tasks = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func didTapAdd() {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "entry") as! EntryViewController
        vc.title = "New Task"
        navigationController?.pushViewController(vc, animated: true)
    }


}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return tasks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
}

