//
//  DetailRow.swift
//  HomeWorkProject_3.5
//
//  Created by Максим on 22.09.2021.
//

import SwiftUI

struct DetailRow: View {
    let content: String
    let logo: String
    
    var body: some View {
        HStack {
            Image(systemName: logo)
                .foregroundColor(.blue)
            Text(content)
        }
    }
}

struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailRow(content: "name", logo: "phone")
    }
}
