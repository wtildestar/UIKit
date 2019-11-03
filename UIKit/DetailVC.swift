//
//  DetailVC.swift
//  UI-Kit
//
//  Created by wtildestar on 31/10/2019.
//  Copyright © 2019 wtildestar. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    //
    var trackTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = UIImage(named: trackTitle)
        titleLabel.text = trackTitle
        titleLabel.numberOfLines = 0
    }

}
