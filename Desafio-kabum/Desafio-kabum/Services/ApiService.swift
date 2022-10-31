//
//  ApiService.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 27/10/22.
//

import Foundation

class ApiService: ObservableObject {
     @Published var products: [Product] = []

    func fetch() async throws {
        guard let url = URL(string: "https://servicespub.prod.api.aws.grupokabum.com.br/home/v1/home/produ") else { fatalError("Missing URL")

        }
            let urlRequest = URLRequest(url: url)
            let (data, response) = try await URLSession.shared.data(for: urlRequest)

            guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data")

            }
        if let decodedData = try? JSONDecoder().decode(Result.self, from: data) {
            products = decodedData.produtos
            print("Async decode", decodedData)
        }

    }

//     func getDataJson() async {
//
//        guard let url = URL(string: "https://servicespub.prod.api.aws.grupokabum.com.br/home/v1/home/produto") else {
//            print("Nao foi dessa vez, bora de novo!")
//            return
//        }
//
////        do {
////            let (data, _) = try await URLSession.shared.data(from: url)
////
////            // deconding data
////            switch data {
////
////            default:
////                <#code#>
////            }
////            if let decodeResponse = try JSONDecoder().decode(Result.self, from: data) {
////                self.produtos = decodeResponse.produtos
////            }
////        } catch {
////            print("\(error)")
////        }
//
//    }
}
