//
//  BrandCell.swift
//  Shoe Shock
//
//  Created by Steven Sullivan on 6/10/22.
//

import UIKit

class BrandCell: UICollectionViewCell {
    
    
    @IBOutlet weak var brandTitle: UILabel!
    
    func updateViews(brand: Brand) {
        brandTitle.text = brand.title
    }
    
}
