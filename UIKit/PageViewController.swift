//
//  PageViewController.swift
//  UI-Kit
//
//  Created by wtildestar on 01/11/2019.
//  Copyright © 2019 wtildestar. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {
    
    let presentScreenContent = [
        "Первая страница презентации расскажет о вхождении в swift UIKit",
        "Вторая страница презентации расскажет о работе с UITableView",
        "Третья страница презентации расскажет о том как работать с CoreData",
        "Четвертая страница презентации расскажет как работать с Application Programming Interface",
        "" // Добавили для dismiss пустую страницу на закрытие
    ]
    
    let emojiArray = ["💅🏻", "🔧", "⚙️", "🔑", ""]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Так как мы подписались под протокол UIPageViewControllerDataSource, необходимо назначить класс делегатом этого протокола
        dataSource = self
        
        if let contentViewController = showViewControllerAtIndex(0) {
            // Создаем массив из ViewControllers
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func showViewControllerAtIndex(_ index: Int) -> ContentViewController? {
        guard index >= 0 else { return nil }
        guard index < presentScreenContent.count else {
            let userDefaults = UserDefaults.standard
            userDefaults.set(true, forKey: "presentationWasViewed") // Устанавливаем в настройках приложения ключ который дает понять что презентация была просмотрена
            dismiss(animated: true, completion: nil) // Метод закрывает ViewController
            return nil
        }
        guard let contentViewController = storyboard?.instantiateViewController(withIdentifier: "ContentViewController") as? ContentViewController else { return nil }
        contentViewController.presentText = presentScreenContent[index]
        contentViewController.emoji = emojiArray[index]
        contentViewController.currentPage = index
        contentViewController.numberOfPages = presentScreenContent.count
        
        return contentViewController
    }

}

extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! ContentViewController).currentPage
        pageNumber -= 1
        
        return showViewControllerAtIndex(pageNumber)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! ContentViewController).currentPage
        pageNumber += 1
        
        return showViewControllerAtIndex(pageNumber)
    }
    
    
}
