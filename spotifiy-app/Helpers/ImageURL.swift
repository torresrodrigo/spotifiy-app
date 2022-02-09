//
//  ImageURL.swift
//  spotifiy-app
//
//  Created by Rodrigo Torres on 09/02/2022.
//

import Foundation
import SDWebImage

class ImageURL {
    func getImage(imageUrl: String?, imageView: UIImageView) {
        if let path = imageUrl {
            let imageUrl = URL(string: path)
            imageView.sd_setImage(with: imageUrl)
        }
    }
}
