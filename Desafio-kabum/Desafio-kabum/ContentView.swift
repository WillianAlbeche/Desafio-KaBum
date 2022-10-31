//
//  ContentView.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 27/10/22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        Home()
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//            ForEach(array , id: \.codigo){ product in
//                    VStack {
//                        Text("Ola\(product.codigo)")
//                            .foregroundColor(.blue)
//                    }

//        .task {
//            await api.getDataJson()
//            array = api.products
//            let _ = print(array)
//        }
//    private let api = ApiService()
//    @State var array:[Product] = []
