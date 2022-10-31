//
//  ApiManagerConvencional.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 28/10/22.
//

import Foundation
class ApiManagerConvencional: ObservableObject {
    @Published var products: [Product] = []
    func fetch() {
        guard let url = URL(string: "https://servicespub.prod.api.aws.grupokabum.com.br/home/v1/home/produto") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let data = data , error == nil else {
                return
            }
            // Convert to JSON
            do {
                let response = try JSONDecoder().decode(Result.self, from: data)
                DispatchQueue.main.async {
                    self?.products = response.produtos
                }

            } catch {
                print("tentei e deu: \(error)")
            }
        }
        task.resume()

    }
}
