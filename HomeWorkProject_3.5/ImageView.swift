//
//  ImageView.swift
//  HomeWorkProject_3.5
//
//  Created by Максим on 22.09.2021.
//

import SwiftUI

struct ImageView: View {
    let imageName: String
    
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .frame(width: 120, height: 120, alignment: .center)
                .cornerRadius(15)
                .padding()
            Spacer()
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(imageName: "person.fill")
    }
}
