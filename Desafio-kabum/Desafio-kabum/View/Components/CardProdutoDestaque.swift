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
    //@State var image: UIImage = UIImage()
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(.white)
            .frame(width: 350, height: 120)
            .overlay {
                HStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.white)
                        .frame(width: 120, height: 120)
                        .shadow(radius: 1.5, x: 0, y: 2.5)
                        .overlay {
                            AsyncImage(url: URL(string: imageURL)) {image in
                                image
                                      .resizable()
                                      //.scaledToFit()
                              } placeholder: {
                                  ProgressView()
                              }
                              .cornerRadius(15)

                              .padding()
                        }

                    Text(nomeProd)
                        .lineLimit(3)
                }
                .padding()
            }
//            .onAppear() {
//                image = ImageManager().loadImage(urlImage: imageURL)
//            }
    }
}

struct CardProdutoDestaque_Previews: PreviewProvider {
    static var previews: some View {
        CardProdutoDestaque()
    }
}
