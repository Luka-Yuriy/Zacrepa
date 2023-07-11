//
//  Person.swift
//  Zacrepa
//
//  Created by Yuri Luka on 10/07/2023.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name)  \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let name = DataStore.shared.names.shuffled()
        let surname = DataStore.shared.surnames.shuffled()
        let phone = DataStore.shared.phones.shuffled()
        let email = DataStore.shared.emails.shuffled()
        
        let iterationCounter = min(
            name.count,
            surname.count,
            phone.count,
            email.count
        )
        for index in 0..<iterationCounter {
            
            let person = Person(
                name: name[index],
                surname: surname[index],
                phone: phone[index],
                email: email[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

enum Contact: String {
    case phone = "phone"
    case email = "tray"
}
