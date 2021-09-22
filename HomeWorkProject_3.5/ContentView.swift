//
//  ContentView.swift
//  HomeWorkProject_3.5
//
//  Created by Максим on 22.09.2021.
//

import SwiftUI

struct ContentView: View {
    private let contacts = Contact.getContacts()
    
    var body: some View {
        TabView {
            ContactsView(contacts: contacts)
                .tabItem {
                    Image(systemName: Logo.persons.rawValue)
                    Text("Contacts")
                }
            NumbersView(contacts: contacts)
                .tabItem {
                    Image(systemName: Logo.phone.rawValue)
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
