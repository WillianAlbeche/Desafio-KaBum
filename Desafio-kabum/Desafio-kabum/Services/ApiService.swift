//
//  ApiService.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 27/10/22.
//
// MARK: chamada de API utilizando async

import Foundation

class ApiService: ObservableObject {

    var app: Int = 1
    var limite: Int = 10
    //var pagina: Int = 1
    //var lastId: Int? = nil

    func fetch(currentPage: Int) async throws -> [Product] {

        guard let url = URL(string: "https://servicespub.prod.api.aws.grupokabum.com.br/home/v1/home/produto?app=\(app)&limite=\(limite)&pagina=\(currentPage)") else { fatalError("Missing URL")
        }
            let urlRequest = URLRequest(url: url)
            let (data, _) = try await URLSession.shared.data(for: urlRequest)

        struct Response: Decodable {
            let produtos: [Product]
        }
        let response = try JSONDecoder().decode(Response.self, from: data)
        return response.produtos
        

    }


}
