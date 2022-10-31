//
//  ApiService.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 27/10/22.
//

import Foundation

class ApiService: ObservableObject {
     @Published var produtos: [Product] = []

     func getDataJson() async {

        guard let url = URL(string: "https://servicespub.prod.api.aws.grupokabum.com.br/home/v1/home/produto") else {
            print("Nao foi dessa vez, bora de novo!")
            return
        }

//        do {
//            let (data, _) = try await URLSession.shared.data(from: url)
//
//            // deconding data
//            switch data {
//                
//            default:
//                <#code#>
//            }
//            if let decodeResponse = try JSONDecoder().decode(Result.self, from: data) {
//                self.produtos = decodeResponse.produtos
//            }
//        } catch {
//            print("\(error)")
//        }

    }
}
