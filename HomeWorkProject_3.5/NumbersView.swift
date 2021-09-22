//
//  NumbersView.swift
//  HomeWorkProject_3.5
//
//  Created by Максим on 22.09.2021.
//

import SwiftUI

struct NumbersView: View {
    let contacts = Contact.getContacts()
    
    var body: some View {
        List {
            ForEach(contacts) {contact in
                SectionView(contact: contact)
            }
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView()
    }
}
