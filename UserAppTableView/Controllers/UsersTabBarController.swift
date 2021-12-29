//
//  UsersTabBarController.swift
//  UserAppTableView
//
//  Created by ILYA BILARUS on 29.12.2021.
//

import UIKit

class UsersTabBarController: UITabBarController {
    
    
    
    let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepairNewViewController()
    }
    

    private func prepairNewViewController() {
        
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            if let userListVC = viewController as? DetailUserListTableView {
                userListVC.persons = persons
            } else if let navigationVC = viewController as? UINavigationController {
                
                let detailUserListVC = navigationVC.topViewController as! UserListTableView
                detailUserListVC.persons = persons
            }
            
        }
    }
    
}
