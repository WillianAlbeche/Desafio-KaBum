//
//  ImageManager.swift
//  Desafio-kabum
//
//  Created by Willian Magnum Albeche on 31/10/22.
//

import Foundation
import SwiftUI
struct ImageManager {

    func loadImage (urlImage: String) -> UIImage {
        var data: Data = Data()
        do {
            guard let  url = URL(string: urlImage) else {
                print("image not found")
                return UIImage()
            }
            let dataResponse = try Data(contentsOf: url)
            DispatchQueue.main.async {
                data = dataResponse
            }
            return UIImage(data: data) ?? UIImage()
        } catch {
            print(error)
        }

        return UIImage()
    }
}
