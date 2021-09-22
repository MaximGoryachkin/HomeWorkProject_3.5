//
//  NumbersView.swift
//  HomeWorkProject_3.5
//
//  Created by Максим on 22.09.2021.
//

import SwiftUI

struct NumbersView: View {
    let contacts: [Contact]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts) {contact in
                    Section(header: Text(contact.fullName)) {
                        DetailRow(content: contact.phoneNumber,
                                  logo: Logo.phone.rawValue)
                        DetailRow(content: contact.eMail,
                                  logo: Logo.tray.rawValue)
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: Contact.getContacts())
    }
}
