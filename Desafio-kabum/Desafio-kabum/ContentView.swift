//
//  ContentView.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 27/10/22.
//

import SwiftUI


struct ContentView: View {

    @StateObject var apiManager = ApiManager()
    

    var body: some View {
        VStack {
            List {
                ForEach(apiManager.products , id: \.self) { product in
                    Text("olha ai o get da api \(product.nome)")

                }
            }
            .task {
                await api.getDataJson()
                array = api.products
                let _ = print(array)
            }
        }
        .padding()
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
