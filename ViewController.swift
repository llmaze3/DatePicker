//
//  ViewController.swift
//  DATE PICKER
//
//  Created by Lloyd Maze Powell III on 8/26/17.
//  Copyright © 2017 L.M.PowellEnterprise. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var eventDate: UITextField!
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
    }
    
    func createDatePicker() {
        //format for picker
        datePicker.datePickerMode = .date
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        //bar done button
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneButton], animated: false)
        eventDate.inputAccessoryView = toolbar
        //assigning date Picker to Text field
        eventDate.inputView = datePicker
        
    }
    
    func donePressed(){
        //format date
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        // US English Locale (en_US)
        dateFormatter.locale = Locale(identifier: "en_US")
        print(dateFormatter.string(from: datePicker.date)) // Jan 2, 2001
        eventDate.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(false)
    }
  
}

