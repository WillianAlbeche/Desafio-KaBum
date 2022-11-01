//
//  CardCarrousel.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 31/10/22.
//

import SwiftUI


struct CardCarrousel: View {
    @State var imageName:String = ""
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 300, height:200)
            .overlay {
                ZStack {
                    Image(imageName)
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
