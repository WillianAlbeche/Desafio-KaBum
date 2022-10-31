//
//  CardProdutoDestaque.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 31/10/22.
//

import SwiftUI

struct CardProdutoDestaque: View {
    @State var imageURL: String = ""
    @State var nomeProd: String = ""
    @State var precoProd: String = ""
    //@State var image: UIImage = UIImage()
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(Color(red: 0.9686274509803922, green: 0.9725490196078431, blue: 0.996078431372549))
            .frame(width: 375, height: 175)
            .shadow(radius: 1.5, x: 0, y: 0.5)
            .overlay {
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
                        .frame(width: 135, height: 135)
                        .shadow(radius: 1.5, x: 0, y: 2)
                        .overlay {
                            AsyncImage(url: URL(string: imageURL)) {image in
                                image
                                      .resizable()
                                      //.scaledToFit()
                              } placeholder: {
                                  ProgressView()
                              }
                              .cornerRadius(10)
                        }
                        .padding()
                    VStack(alignment: .leading) {
                        Text(nomeProd)
                            .frame(width: 200, height: 100)
                            .lineLimit(3)
                        Text(precoProd)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 1.0, green: 0.2980392156862745, blue: 0.0))
                    }

                }
                .padding(.horizontal)
            }
            .padding()

    }
}

struct CardProdutoDestaque_Previews: PreviewProvider {
    static var previews: some View {
        CardProdutoDestaque()
    }
}
