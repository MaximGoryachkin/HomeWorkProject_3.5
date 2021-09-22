//
//  ContentView.swift
//  HomeWorkProject_3.5
//
//  Created by Максим on 22.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            ContactsView()
                .tabItem {
                    Image(systemName: Logo.personsLogo.rawValue)
                    Text("Contacts")
                }
            NumbersView()
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
