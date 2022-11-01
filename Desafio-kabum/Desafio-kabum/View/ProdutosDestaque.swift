//
//  ProdutosDestaque.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 01/11/22.
//

import SwiftUI

struct ProdutosDestaque: View {
    @State var arrayProducts: [Product] = []
    @StateObject var apiManager =  ApiService()
    @State var currentPage = 1
    @State var thresholdIndex: Int = 10
    @State var isLoading: Bool = true
    var body: some View {
        ZStack {
            if arrayProducts.isEmpty {
                ProgressView()
            } else {
                LazyVStack {
                    ForEach(Array(zip(arrayProducts.indices, arrayProducts)), id: \.0) { (index, product) in
                        CardProdutoDestaque(
                            imageURL: product.img,
                            nomeProd: product.nome,
                            precoDescontoProd: product.preco_desconto_formatado,
                            precoProd: product.preco_formatado,
                            nomeFabricante: product.fabricante.nome
                        )
                    }
                    if isLoading {
                        ActivityIndicator()
                            .onAppear() {
                                isLoading = true
                                fetchPagination()
                            }
                    }
                }
            }
        }
        .onAppear() {
            getData()
        }
    }

    func fetchPagination() {
        self.thresholdIndex += 10
        currentPage += 1
        getData()
    }

    func getData() {
        Task {
            do {
                let request = try await apiManager.fetch(currentPage: currentPage)
                DispatchQueue.main.async {
                    self.arrayProducts.append(contentsOf: request)
                    if request.isEmpty {
                        self.isLoading = false
                    }
                }
            } catch {
                print(error)
            }

        }
    }
}

struct ProdutosDestaque_Previews: PreviewProvider {
    static var previews: some View {
        ProdutosDestaque()
    }
}
