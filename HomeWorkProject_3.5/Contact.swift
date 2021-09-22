//
//  Contact.swift
//  HomeWorkProject_3.5
//
//  Created by Максим on 22.09.2021.
//

import Foundation

struct Contact: Identifiable {
    let id: Int
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let eMail: String
    let image = "person.fill"
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Contact {
    static func getContacts() -> [Contact] {
        var contacts: [Contact] = []
        
        let firstNames = DataManager.shared.firstNames.shuffled()
        let lastNames = DataManager.shared.lastNames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        let eMails = DataManager.shared.eMails.shuffled()
        
        for index in 0..<DataManager.shared.count {
            let contact = Contact(id: index,
                                firstName: firstNames[index],
                                lastName: lastNames[index],
                                phoneNumber: phoneNumbers[index],
                                eMail: eMails[index])
            contacts.append(contact)
        }
        
        return contacts
    }
}

enum Logo: String {
    case persons = "person.3"
    case phone = "phone"
    case tray = "tray"
}
