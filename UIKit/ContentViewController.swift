//
//  ContentViewController.swift
//  UI-Kit
//
//  Created by wtildestar on 01/11/2019.
//  Copyright © 2019 wtildestar. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {

    @IBOutlet weak var presentTextLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var presentText = ""
    var emoji = ""
    var currentPage = 0
    var numberOfPages = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presentTextLabel.text = presentText
        emojiLabel.text = emoji
        // Сначала кол-во страниц, затем текущую страницу
        pageControl.numberOfPages = numberOfPages
        pageControl.currentPage = currentPage
        
    }

}
