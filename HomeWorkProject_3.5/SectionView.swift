//
//  SectionView.swift
//  HomeWorkProject_3.5
//
//  Created by Максим on 22.09.2021.
//

import SwiftUI

struct SectionView: View {
    let contact: Contact
    
    var body: some View {
        Section(header: Text(contact.fullName)) {
            HStack {
                Image(systemName: Logo.phone.rawValue)
                    .foregroundColor(.blue)
                Text(contact.phoneNumber)
            }
            HStack {
                Image(systemName: Logo.tray.rawValue)
                    .foregroundColor(.blue)
                Text(contact.eMail)
            }
        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(contact: Contact.getContacts().first!)
    }
}
