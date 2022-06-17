//
//  ShoeByBrandCell.swift
//  Shoe Shock
//
//  Created by Steven Sullivan on 6/10/22.
//

import UIKit

class ShoeByBrandCell: UICollectionViewCell {
    
    @IBOutlet weak var ShoeBrandLabel: UILabel!
    @IBOutlet weak var ShoeNameLabel: UILabel!
    @IBOutlet weak var ShoePriceLabel: UILabel!
    @IBOutlet weak var ShoeImageView: UIImageView!
    
    //myImageView.layer.cornerRadius = 100
    //myImageView.clipsToBounds = true
    
    func updateShoeCollectionView(shoe: Shoe) {
        ShoeBrandLabel.text = shoe.brandName
        ShoeNameLabel.text = shoe.name
        ShoePriceLabel.text = shoe.price
        ShoeImageView.image = UIImage(named: shoe.imageName)
    }
}
