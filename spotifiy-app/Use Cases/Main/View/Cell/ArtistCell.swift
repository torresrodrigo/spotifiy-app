//
//  ArtistCell.swift
//  spotifiy-app
//
//  Created by Rodrigo Torres on 06/02/2022.
//

import UIKit

class ArtistCell: UITableViewCell {

    let imageHelper = ImageURL()
    
    static let identifier = String(describing: ArtistCell.self)
    static func nib() -> UINib {
        return UINib(nibName: "ArtistCell", bundle: nil)
    }
    
    @IBOutlet weak var artistTitleLabel: UILabel!
    @IBOutlet weak var artistImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(data: ArtistData) {
        artistTitleLabel.text = data.name
        if !data.images.isEmpty {
            
            imageHelper.getImage(imageUrl: data.images[0].url, imageView: artistImage)
        }
    }
    
}
