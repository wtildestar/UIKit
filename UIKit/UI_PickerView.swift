//
//  UI_PickerView.swift
//  UI-Kit
//
//  Created by wtildestar on 30/10/2019.
//  Copyright © 2019 wtildestar. All rights reserved.
//

import UIKit

    

class UI_PickerView: UIViewController {
    
    var uiElements = ["UISegmented",
                      "UILabel",
                      "UIButton",
                      "UITextField",
                      "UISlider",
                      "UIDatePicker"]
    
    var selectedElement: String?
    
    @IBOutlet weak var segmented: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var switch_Label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        choiceUiElement()
        createToolbar()
    }
    
    func hideAllElements() {
        segmented.isHidden = true
        label.isHidden = true
        button.isHidden = true
        slider.isHidden = true
        datePicker.isHidden = true
    }
    
    func choiceUiElement() {
        let elementPicker = UIPickerView()
        elementPicker.delegate = self
        
        textField.inputView = elementPicker
        
        // Customize UIPickerView
        elementPicker.backgroundColor = .gray
    }
    
    func createToolbar() {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done",
                                         style: .plain,
                                         target: self,
                                         action: #selector(dismissKeyboard))
        
        toolbar.setItems([doneButton], animated: true)
        toolbar.isUserInteractionEnabled = true
        
        textField.inputAccessoryView = toolbar
        
        // Customize UIToolbar
        toolbar.tintColor = .white
        toolbar.barTintColor = .gray
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func switchAction(_ sender: UISwitch) {
           segmented.isHidden = !segmented.isHidden
           label.isHidden = !label.isHidden
           textField.isHidden = !textField.isHidden
           button.isHidden = !button.isHidden
           slider.isHidden = !slider.isHidden
           datePicker.isHidden = !datePicker.isHidden
           
           if sender.isOn {
               switch_Label.text = "Отобразить все элементы"
           } else {
               switch_Label.text = "Скрыть все элементы"
           }
       }

}

extension UI_PickerView: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return uiElements.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return uiElements[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedElement = uiElements[row]
        textField.text = selectedElement
        
        switch row {
        case 0:
            hideAllElements()
            segmented.isHidden = false
        case 1:
            hideAllElements()
            label.isHidden = false
        case 2:
            hideAllElements()
            button.isHidden = false
        case 3:
            hideAllElements()
        case 4:
            hideAllElements()
            slider.isHidden = false
        case 5:
            hideAllElements()
            datePicker.isHidden = false
        default:
            hideAllElements()
        }
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    viewForRow row: Int,
                    forComponent component: Int,
                    reusing view: UIView?) -> UIView {
        
        var pickerViewLabel = UILabel()
        
        if let currentLabel = view as? UILabel {
            pickerViewLabel = currentLabel
        } else {
            pickerViewLabel = UILabel()
        }
        
        pickerViewLabel.textColor = .white
        pickerViewLabel.textAlignment = .center
        pickerViewLabel.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 25)
        pickerViewLabel.text = uiElements[row]
        
        return pickerViewLabel
        
    }
    
}
