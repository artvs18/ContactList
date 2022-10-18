//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Artemy Volkov on 18.10.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var emailTextView: UITextView!
    @IBOutlet var phoneTextView: UITextView!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        emailTextView.text = person.email
        phoneTextView.text = person.phone
    }

}
