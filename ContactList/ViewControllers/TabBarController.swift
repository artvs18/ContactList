//
//  TabBarController.swift
//  ContactList
//
//  Created by Artemy Volkov on 18.10.2022.
//

import UIKit

class TabBarController: UITabBarController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        passDataToVC()
    }
    
    private func passDataToVC() {
        let personsList = Person.getPersonsList()
        guard let viewControllers = self.viewControllers else { return }
        viewControllers.forEach {
            if let contactListVC = $0 as? ContactListViewController {
                contactListVC.personsList = personsList
            } else if let detailedContactListVC = $0 as? DetailedContactListViewController {
                detailedContactListVC.personsList = personsList
            }
        }
    }
}
