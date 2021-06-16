//
//  TrendingGameCollectionViewCell.swift
//  Kippo-Coding-Challenge
//
//  Created by Garen Kantarci on 6/16/21.
//

import UIKit

class TrendingGameCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var title: UILabel!
    @IBOutlet var genre: UILabel!
    @IBOutlet var percent: UILabel!
    
    static let identifier = "TrendingGameCollectionViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
//    public func configure(with image: UIImage, with title: String, with genre: String){
//        imageView.image = image
//    }
    public func configure(image: UIImage, gameTitle: String, gameGenre: String){
        imageView.image = image
        title.text = gameTitle
        genre.text = gameGenre
        
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "TrendingGameCollectionViewCell", bundle: nil)
    }

}
