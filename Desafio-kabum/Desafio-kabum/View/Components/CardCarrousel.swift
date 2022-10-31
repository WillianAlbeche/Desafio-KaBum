//
//  CardCarrousel.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 31/10/22.
//

import SwiftUI

struct CarrouselImages {
    var id: Int
    var imageName:String
}
struct CardCarrousel: View {
    @State var nameImage:String = ""
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 300, height:200)
            .overlay {
                ZStack {
                    Image(nameImage)
                        .resizable()
                        .cornerRadius(15)
                }

            }
    }
}

struct CardCarrousel_Previews: PreviewProvider {
    static var previews: some View {
        CardCarrousel()
    }
}
