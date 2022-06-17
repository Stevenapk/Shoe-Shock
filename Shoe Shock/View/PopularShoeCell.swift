//
//  PopularShoeCell.swift
//  Shoe Shock
//
//  Created by Steven Sullivan on 6/11/22.
//

import UIKit

class PopularShoeCell: UICollectionViewCell {
    
    @IBOutlet weak var ShoeImageView2: UIImageView!
    @IBOutlet weak var ShoeBrandLabel2: UILabel!
    @IBOutlet weak var ShoeNameLabel2: UILabel!
    @IBOutlet weak var ShoePriceLabel2: UILabel!
    
    func updatePopularCollectionView(shoe: Shoe) {
        ShoeBrandLabel2.text = shoe.brandName
        ShoeNameLabel2.text = shoe.name
        ShoePriceLabel2.text = shoe.price
        ShoeImageView2.image = UIImage(named: shoe.imageName)
    }
    
}
