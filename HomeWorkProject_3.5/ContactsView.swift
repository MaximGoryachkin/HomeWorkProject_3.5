//
//  ContactsView.swift
//  HomeWorkProject_3.5
//
//  Created by Максим on 22.09.2021.
//

import SwiftUI

struct ContactsView: View {
    let contacts = Contact.getContacts()
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(contact.fullName,
                               destination: ContactDetailsView(contact: contact))
            }
            .navigationTitle("Contacts")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}