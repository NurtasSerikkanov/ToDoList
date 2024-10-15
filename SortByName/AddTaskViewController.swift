//
//  AddPersonViewController.swift
//  SortByName
//
//  Created by Nurtas Serikkanov on 01.11.2023.
//

import Foundation
import UIKit

protocol AddTaskDelegate: AnyObject {
    func addTask(_ tasks: Task)
}

class AddTaskViewController: UIViewController, UITextFieldDelegate {
    
    weak var delegate: AddTaskDelegate?
    
    @IBOutlet weak var taskNameField: UITextField!
    @IBOutlet weak var taskDescriptionField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func savePerson() {
        guard let taskName = taskNameField.text, let taskDescription = taskDescriptionField.text, !taskName.isEmpty else {
            return
        }

        let newPerson = Task(taskName: taskName, taskDescription: taskDescription)
        delegate?.addPerson(newPerson)

        navigationController?.popViewController(animated: true)
    }
    
}
