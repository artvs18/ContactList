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
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let detailedContactListVC = viewControllers?.last as? DetailedContactListViewController else { return }
        
        let personsList = Person.getPersonsList()
        contactListVC.personsList = personsList
        detailedContactListVC.personsList = personsList
    }
}
