//
//  ContactDetailsView.swift
//  HomeWorkProject_3.5
//
//  Created by Максим on 22.09.2021.
//

import SwiftUI

struct DetailsView: View {
    let contact: Contact
    
    var body: some View {
        List {
            ImageView(imageName: contact.image)
            DetailRow(content: contact.phoneNumber,
                      logo: Logo.phone.rawValue)
            DetailRow(content: contact.eMail,
                      logo: Logo.tray.rawValue)
        }
        .navigationTitle(contact.fullName)
        .listStyle(GroupedListStyle())
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(contact: Contact.getContacts().first!)
    }
}
