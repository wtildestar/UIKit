//
//  UISegmentedViewController.swift
//  UI-Kit
//
//  Created by wtildestar on 28/10/2019.
//  Copyright © 2019 wtildestar. All rights reserved.
//

import UIKit

class UI_Segmented: UIViewController {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.isHidden = true
        label.font = label.font.withSize(35)
        label.textAlignment = .center
        label.numberOfLines = 2
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
    }
    @IBAction func choiseSegment(_ sender: UISegmentedControl) {
        
        label.isHidden = false
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            label.text = "Первый сегмент"
            label.textColor = .red
        case 1:
                  label.text = "Второй сегмент"
                  label.textColor = .blue
        case 2:
                  label.text = "Третий сегмент"
                  label.textColor = .green
        default:
            print("Что-то не так!")
        }
    }
    
}
