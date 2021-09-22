//
//  Contact.swift
//  HomeWorkProject_3.5
//
//  Created by Максим on 22.09.2021.
//

import Foundation

struct Contact: Identifiable {
    var id: Int
    var firstName: String
    var lastName: String
    var phoneNumber: String
    var eMail: String
    var image = "person.fill"
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Contact {
    static func getContacts() -> [Contact] {
        var persons: [Contact] = []
        
        let firstNames = DataManager.shared.firstNames.shuffled()
        let lastNames = DataManager.shared.lastNames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        let eMail = DataManager.shared.eMails.shuffled()
        
        for index in 0..<DataManager.shared.count {
            let person = Contact(id: index,
                                firstName: firstNames[index],
                                lastName: lastNames[index],
                                phoneNumber: phoneNumbers[index],
                                eMail: eMail[index])
            persons.append(person)
        }
        
        return persons
    }
}

enum Logo: String {
    case personsLogo = "person.3"
    case phone = "phone"
    case tray = "tray"
}
