//
//  ViewController.swift
//  UIKit
//
//  Created by wtildestar on 28/10/2019.
//  Copyright © 2019 wtildestar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var actionButtons: [UIButton]!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHidden = true
        label.font = label.font.withSize(50)
        
        button.isHidden = true
        
        for button in actionButtons {
            button.setTitleColor(.blue, for: .normal)
            button.backgroundColor = .green
        }
        
        button.setTitle("Очистить", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        
    }
    
    
    @IBAction func pressedButton(_ sender: UIButton) {
        label.isHidden = false
        button.isHidden = false
        
        if sender.tag == 0 {
            label.text = "Hi man"
            label.textColor = .red
        } else if sender.tag == 1 {
            label.text = "Hello dude"
            label.textColor = .blue
        } else if sender.tag == 2 {
            label.isHidden = true
            button.isHidden = true
        }
    }
    
}

