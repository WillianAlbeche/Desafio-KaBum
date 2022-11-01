//
//  Carrousel.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 31/10/22.
//

import SwiftUI

struct Carrousel: View {
    var arrayCarrousel:[CarrouselImages] = [
        CarrouselImages(id: 1, imageName: "KabumBanner"),
        CarrouselImages(id: 2, imageName: "KabumBanner2"),
        CarrouselImages(id: 3, imageName: "KabumBanner3")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center) {
                ForEach(arrayCarrousel, id: \.id) { banner in
                    CardCarrousel(nameImage: banner.imageName)
                        .padding()

                }
            }
        }

    }
}

struct Carrousel_Previews: PreviewProvider {
    static var previews: some View {
        Carrousel()
    }
}
