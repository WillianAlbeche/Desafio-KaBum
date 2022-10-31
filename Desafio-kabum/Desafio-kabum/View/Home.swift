//
//  Home.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 31/10/22.
//

import SwiftUI

struct Home: View {
    @StateObject var apiManager = ApiManagerConvencional()
    //@StateObject var apiManager =  ApiService()

    var body: some View {
        VStack {
            ScrollView {
                ForEach(apiManager.products , id: \.self) { product in
                    CardProdutoDestaque(
                        imageURL: product.img,
                        nomeProd: product.nome,
                        precoProd: product.preco_formatado
                    )
                }
                .padding()
            }
        }
        .ignoresSafeArea()
        .background(Color(red: 0.9568627450980393, green: 0.9568627450980393, blue: 1.0))
        .onAppear(){
            apiManager.fetch()
        }
        .padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
