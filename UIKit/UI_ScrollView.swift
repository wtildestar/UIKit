//
//  UI_ScrollView.swift
//  UI-Kit
//
//  Created by wtildestar on 29/10/2019.
//  Copyright © 2019 wtildestar. All rights reserved.
//

import UIKit

class UI_ScrollView: UIViewController {
    
    @IBOutlet weak var segmented: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.numberOfLines = 2
        datePicker.locale = Locale(identifier: "ru_RU")
    }
    
    @IBAction func changeDate(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.locale = Locale(identifier: "ru_RU")
        let dateValue = dateFormatter.string(from: sender.date)
        label.text = dateValue
    }

}
