//
//  ViewControllerForPageViewController.swift
//  UI-Kit
//
//  Created by wtildestar on 01/11/2019.
//  Copyright © 2019 wtildestar. All rights reserved.
//

import UIKit

class ViewControllerForPageViewController: UIViewController {
    
    // Вызываем метод
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        startPresentation()
    }

    // Напишем метод который будет запускать PageViewController
    func startPresentation() {
        
        let userDefaults = UserDefaults.standard
        let presentationWasViewed = userDefaults.bool(forKey: "presentationWasViewed")
        if presentationWasViewed == false {
            if let pageViewController = storyboard?.instantiateViewController(
                withIdentifier: "PageViewController") as? PageViewController {
                
                // Отображаем pageViewController
                present(pageViewController, animated: true, completion: nil)
            }
        }
        
        
    }

}
