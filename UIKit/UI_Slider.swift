//
//  UISlider.swift
//  UI-Kit
//
//  Created by wtildestar on 28/10/2019.
//  Copyright © 2019 wtildestar. All rights reserved.
//

import UIKit

class UI_Slider: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.value = 1
        
        label.text = String(slider.value)

        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .blue
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .darkGray
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        label.text = String(sender.value)
        
        let backgroundColor = self.view.backgroundColor
        self.view.backgroundColor = backgroundColor?.withAlphaComponent(CGFloat(sender.value))
    }
}
