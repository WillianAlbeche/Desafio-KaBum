//
//  SectionView.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 01/11/22.
//

import SwiftUI

struct SectionView: View {
    var body: some View {
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
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView()
    }
}
