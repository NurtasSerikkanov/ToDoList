//
//  DeletePersonViewController.swift
//  SortByName
//
//  Created by Nurtas Serikkanov on 08.11.2023.
//

import UIKit

protocol TaskDelegate: AnyObject {
    func deleteTask(_ task: Task)
}

class DeleteTaskViewController: UIViewController, UITextFieldDelegate {
    
    var taskToDelete: Task?
    var delegate: TaskDelegate?
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var deleteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let task = taskToDelete {
            label.text = "Вы уверены, что хотите удалить \(task.taskName) \(task.taskDescription)?"
        }

    }
    
    @IBAction func deleteTask() {
        if let task = taskToDelete {
            delegate?.deleteTask(task)
        }

        navigationController?.popViewController(animated: true)
    }

}
