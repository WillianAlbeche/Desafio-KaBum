//
//  Home.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 31/10/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Carrousel()
                SectionView()
                    Spacer()
                ProdutosDestaque()
            }
            .frame( maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BackgroundColor"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HeaderBar()
                }
            }
            .toolbarBackground(
                Color("NavigationColor"),
                for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
