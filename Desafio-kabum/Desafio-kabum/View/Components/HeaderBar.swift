//
//  HeaderBar.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 01/11/22.
//

import SwiftUI

struct HeaderBar: View {
    @State var searchTerm = ""
    var body: some View {
        HStack{
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Procure no KaBum!", text: $searchTerm)
                }
                .foregroundColor(.gray)
                .padding(.leading, 10)
            }
            .frame(height: 35)
            .cornerRadius(13)
            .padding()
            Image(systemName: "cart.fill")
                .foregroundColor(.white)
        }
    }
}

struct HeaderBar_Previews: PreviewProvider {
    static var previews: some View {
        HeaderBar()
    }
}
