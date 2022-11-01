//
//  Product.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 27/10/22.
//

import Foundation



struct Product:Hashable, Codable {
    static func == (lhs: Product, rhs: Product) -> Bool {
        return lhs.codigo == rhs.codigo
    }

    let codigo: Int
    let img: String
    let nome: String
    let alt: Int
    let preco: String
    let preco_formatado: String
    let preco_desconto_formatado: String
    let is_openbox: Bool
    let fabricante: Fabricante
    let menu: String
    let disponibilidade: Bool
    let offer_id: String
    let id_seller: Int

    func hash(into hasher: inout Hasher) {
        hasher.combine(nome)
    }
}
struct Result: Codable {
    var produtos:[Product] = []
}
