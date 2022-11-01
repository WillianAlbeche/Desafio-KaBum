//
//  CardProdutoDestaque.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 31/10/22.
//

import SwiftUI

struct CardProdutoDestaque: View {
    @State var imageURL: String = ""
    @State var nameProd: String = ""
    @State var priceDescountProd: String = ""
    @State var priceProd: String = ""
    @State var nameManufacturer: String = ""

    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(Color("CardBackgroundColor"))
            .frame(width: 375, height: 170)
            .shadow(radius: 1.5, x: 0, y: 0.5)
            .overlay {
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
                        .frame(width: 150, height: 150)
                        .shadow(radius: 1.5, x: 0, y: 2)
                        .overlay {
                            // MARK: forma nova e asincrona de transformar uma url em imagem
                            AsyncImage(url: URL(string: imageURL)) {image in
                                image
                                      .resizable()
                                      .frame(width: 150, height: 150)
                              } placeholder: {
                                  ProgressView()
                              }
                              .cornerRadius(10)
                        }
                    Spacer()
                    VStack(alignment: .leading) {
                        Text(nameManufacturer.uppercased())
                            .font(.caption)
                            .foregroundColor(.gray)
                            .padding(.top, 10)
                        Text(nameProd)
                            .fontWeight(.semibold)
                            .lineLimit(3)
                            .padding(.bottom, 15)
                        Text(priceDescountProd)
                            .fontWeight(.bold)
                            .foregroundColor(Color("OrageKabum"))
                            .padding(.top, 5)
                        Text("\(priceProd) em até 10x")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    .padding(.trailing, 30)
                    .padding(.bottom, 25)
                }
                .padding(5)
            }
            .padding(1.5)
    }
}

struct CardProdutoDestaque_Previews: PreviewProvider {
    static var previews: some View {
        CardProdutoDestaque()
    }
}
