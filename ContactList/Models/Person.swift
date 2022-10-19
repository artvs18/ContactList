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
        let dataManager = DataStore()

        var persons: [Person] = []
        
        for element in 0...dataManager.names.count - 1 {
            persons.append(Person(
                name: dataManager.names[element],
                surname: dataManager.surnames[element],
                email: dataManager.emails[element],
                phone: dataManager.phones[element]
            ))
        }
        
        return persons
    }
}
