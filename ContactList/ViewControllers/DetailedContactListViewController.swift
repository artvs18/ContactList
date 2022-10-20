//
//  DetailedContactListViewController.swift
//  ContactList
//
//  Created by Artemy Volkov on 18.10.2022.
//

import UIKit

class DetailedContactListViewController: UITableViewController {
    
    var personsList: [Person]!
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personInfo", for: indexPath)
        let person = personsList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = person.email
            content.image = UIImage(systemName: "envelope")
        } else {
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        }
        
        content.textProperties.font = .boldSystemFont(ofSize: 17)
        cell.contentConfiguration = content
        
        return cell
    }
}
