//
//  DetailsVC.swift
//  Shoe Shock
//
//  Created by Steven Sullivan on 6/13/22.
//

import UIKit

class DetailsVC: UIViewController {
    
    private (set) public var shoe = Shoe(brandName: "", name: "", imageName: "", price: "", priceAsDouble: 0, description: "")

    @IBOutlet weak var DetailsShoeTitleLbl: UILabel!
    
    @IBOutlet weak var DetailsPriceLbl: UILabel!
    
    @IBOutlet weak var DetailsShoeDescriptionLbl: UILabel!
    
    @IBOutlet weak var DetailsShoeMainImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DetailsShoeTitleLbl.text = shoe.name
        DetailsShoeDescriptionLbl.text = shoe.description
        DetailsPriceLbl.text = shoe.price
        DetailsShoeMainImage.image = UIImage(named: shoe.imageName)

        // Do any additional setup after loading the view.
    }
    
    func initShoes(selectedShoe: Shoe) {
        shoe = DataService.instance.getShoe(for: selectedShoe)
    }

}
