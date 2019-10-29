//
//  UI_TextField.swift
//  UI-Kit
//
//  Created by wtildestar on 28/10/2019.
//  Copyright © 2019 wtildestar. All rights reserved.
//

import UIKit

class UI_TextField: UIViewController {

    @IBOutlet weak var segmented: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!

    @IBAction func donePressed(_ sender: UIButton) {
        
        guard textField.text?.isEmpty == false else { return }
        
        if let _ = Double(textField.text!) {
            let alert = UIAlertController(title: "Неверный формат", message: "Пожалуйста введите имя", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            print("Name format is wrong")
        } else {
            label.text = textField.text
            textField.text = nil
        }
        
    }
}
