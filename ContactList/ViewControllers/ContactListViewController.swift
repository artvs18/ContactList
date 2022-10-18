//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Artemy Volkov on 18.10.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    private var personsList = Person.getPersonsList()

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = personsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        content.textProperties.font = .boldSystemFont(ofSize: 17)
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personDetailsVC = segue.destination as? PersonDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personDetailsVC?.person = personsList[indexPath.row]
    }
}
