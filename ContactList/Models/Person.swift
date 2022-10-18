//
//  Person.swift
//  ContactList
//
//  Created by Artemy Volkov on 18.10.2022.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonsList() -> [Person] {
        let dataManager = DataManager()
        
        var names = dataManager.names.shuffled()
        var surnames = dataManager.surnames.shuffled()
        var emails = dataManager.emails.shuffled()
        var phones = dataManager.phones.shuffled()
        
        var persons: [Person] = []
        
        for _ in 1...dataManager.names.count {
            persons.append(Person(
                name: names.removeLast(),
                surname: surnames.removeLast(),
                email: emails.removeLast(),
                phone: phones.removeLast()
            ))
        }
        
        return persons
    }
}
