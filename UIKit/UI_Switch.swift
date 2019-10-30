//
//  UI_Switch.swift
//  UI-Kit
//
//  Created by wtildestar on 30/10/2019.
//  Copyright © 2019 wtildestar. All rights reserved.
//

import UIKit

class UI_Switch: UIViewController {
    
   @IBOutlet weak var segmented: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var switch_Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
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
