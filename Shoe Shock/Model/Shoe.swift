//
//  Shoe.swift
//  Shoe Shock
//
//  Created by Steven Sullivan on 6/10/22.
//

import Foundation

struct Shoe {
    private (set) public var brandName: String
    private (set) public var name: String
    private (set) public var imageName: String
    private (set) public var price: String
    private (set) public var priceAsDouble: Double
    private (set) public var description: String
    
    init(brandName: String, name: String, imageName: String, price: String, priceAsDouble: Double, description: String) {
        self.brandName = brandName
        self.name = name
        self.imageName = imageName
        self.price = price
        self.priceAsDouble = priceAsDouble
        self.description = description
    }
}

//below may be necessary to simplify data storage and passage of brand within each shoe instance
/*
enum ShoeBrand: String {
    case DG = "Dolce & Gabbana"
    case Dior = "Dior"
    case Prada = "Prada"
    case VG = "Valentino Garavani"
}
*/
