//
//  Home.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 31/10/22.
//

import SwiftUI

struct Home: View {

    @State var searchTerm = ""
    var body: some View {
        NavigationView {
            ScrollView {
                Carrousel()
                HStack {
                    VStack(alignment: .leading) {
                        Text("PRODUTOS")
                            .font(.footnote)
                            .foregroundColor(.blue)
                        Text("Em destaque")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    .padding()
                    Spacer()
                }
                ProdutosDestaque()

            }
            .frame( maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BackgroundColor"))
            //.navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
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
            .toolbarBackground(
                Color("NavigationColor"),
                for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
        //.searchable(text: $searchTerm)

    }

    

}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
