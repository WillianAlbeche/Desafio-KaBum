//
//  Home.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 31/10/22.
//

import SwiftUI

struct Home: View {
    @StateObject var apiManager = ApiManagerConvencional()


    var body: some View {
        VStack {
            List {
                ForEach(apiManager.products , id: \.self) { product in
                    //Text("olha ai o get da api \(product.nome)")
                    CardProdutoDestaque(imageURL: product.img, nomeProd: product.nome)
                }
            }
            .onAppear(){
                apiManager.fetch()
            }
        }
        .padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
