//
//  ContactDetailsView.swift
//  HomeWorkProject_3.5
//
//  Created by Максим on 22.09.2021.
//

import SwiftUI

struct ContactDetailsView: View {
    let contact: Contact
    
    var body: some View {
        VStack {
            List {
                Image(systemName: contact.image)
                    .resizable()
                    .frame(width: 150, height: 150)
                DetailRow(content: contact.phoneNumber, logo: Logo.phone.rawValue)
                DetailRow(content: contact.eMail, logo: Logo.tray.rawValue)
            }
            .navigationTitle(contact.fullName)
        }
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: Contact.getContacts().first!)
    }
}
