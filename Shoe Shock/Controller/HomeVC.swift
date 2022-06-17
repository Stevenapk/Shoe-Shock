//
//  ViewController.swift
//  Shoe Shock
//
//  Created by Steven Sullivan on 6/10/22.
//

import UIKit

class HomeVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
        
    @IBOutlet weak var BrandsCollectionView: UICollectionView!
    
    @IBOutlet weak var ShoesByBrandCollectionView: UICollectionView!
    
    @IBOutlet weak var PopularShoesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    var selectedBrand = ""
    var selectedShoe = Shoe(brandName: "", name: "", imageName: "", price: "", priceAsDouble: 0.0, description: "")
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == BrandsCollectionView) {
            return DataService.instance.getBrands().count
        }
        else if collectionView == PopularShoesCollectionView {
            return DataService.instance.getPopularShoes().count
        }
        return DataService.instance.getShoesByBrand(forBrandTitle: selectedBrand).count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == BrandsCollectionView {
        if let cell = BrandsCollectionView.dequeueReusableCell(withReuseIdentifier: "BrandCell", for: indexPath) as? BrandCell {
            let brand = DataService.instance.getBrands()[indexPath.row]
            cell.updateViews(brand: brand)
            //the below line needs to be moved outside of the brackets of the next if statement per the 2 collection views video :)
            return cell
        }
            return BrandCell()
        } else if (collectionView == ShoesByBrandCollectionView) {
            if let cell2 = ShoesByBrandCollectionView.dequeueReusableCell(withReuseIdentifier: "ShoeByBrandCell", for: indexPath) as? ShoeByBrandCell {
                let shoeByBrand = DataService.instance.getShoesByBrand(forBrandTitle: selectedBrand)[indexPath.row]
                cell2.updateShoeCollectionView(shoe: shoeByBrand)
                return cell2
            }
            return ShoeByBrandCell()
        }
        else if (collectionView == PopularShoesCollectionView) {
        if let cell3 = PopularShoesCollectionView.dequeueReusableCell(withReuseIdentifier: "PopularShoeCell", for: indexPath) as? PopularShoeCell {
            let popularShoes = DataService.instance.getPopularShoes()[indexPath.row]
            cell3.updatePopularCollectionView(shoe: popularShoes)
            return cell3
        }
}
        return PopularShoeCell()
}
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //update cell 2 based on brand selection
        if collectionView == BrandsCollectionView {
        let brand = DataService.instance.getBrands()[indexPath.row]
            selectedBrand = brand.title
            ShoesByBrandCollectionView.reloadData()
   
        }     //THIS IS WHERE THE END COMMENT OUT GOES  :), if you comment out this chunk, be sure to change the else below to "if (collectionView != BrandsCollectionView" to ensure that when you click on a brand it won't segue to the next page :)
        
        //The two below blocks initiate the segue from a shoe image cell to the details page :)
        
        else if collectionView == ShoesByBrandCollectionView {
            let shoeByBrand = DataService.instance.getShoesByBrand(forBrandTitle: selectedBrand)[indexPath.row]
            selectedShoe = shoeByBrand
        performSegue(withIdentifier: "DetailsVC", sender: shoeByBrand)
        } else if collectionView == PopularShoesCollectionView {
            let popularShoes = DataService.instance.getPopularShoes()[indexPath.row]
            selectedShoe = popularShoes
            performSegue(withIdentifier: "DetailsVC", sender: popularShoes)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let DetailsVC = segue.destination as? DetailsVC {
            assert(sender as? Shoe != nil)
            DetailsVC.initShoes(selectedShoe: sender as! Shoe)
        }
    }
}
    

//REPLACE THE ABOVE, (EVERYTHING BELOW cellforitemAt function) with this...
/*
 func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     let cell = BrandsCollectionView.dequeueReusableCell(withReuseIdentifier: "BrandCell", for: indexPath) as! BrandCell
         let brand = DataService.instance.getBrands()[indexPath.row]
         cell.updateViews(brand: brand)
         //the below line needs to be moved outside of the brackets of the next if statement per the 2 collection views video :)
     
     if (collectionView == ShoesByBrandCollectionView) {
         if let cell2 = ShoesByBrandCollectionView.dequeueReusableCell(withReuseIdentifier: "ShoesByBrandCell", for: indexPath) as? ShoeByBrandCell {
             let shoeByBrand = DataService.instance.getShoesByBrand(forBrandTitle: "Dior")[indexPath.row]
             cell2.updateShoeCollectionView(shoe: shoeByBrand)
             return cell2
         }
     }
     return cell
     //below line also needs to be removed dependent on vid 2 maybe?
}


}
 */
//THIS PUTS THINGS IN THE RIGHT ORDER TO SHOW BOTH, HOWEVER TROUBLESHOOT THE ERROR, IT MAY HAVE SOMETHING TO DO WITH LAST VIDEO IN DEVSLOPES CODERSWAG ASSIGNMENT :)
//IF YOU WANT A BACKUP OF THE VERSION THAT WORKED ALTHOUGH MAYBE OUT OF ORDER, HERE THAT IS... :) HAPPY CODING!
/*
 func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     if let cell = BrandsCollectionView.dequeueReusableCell(withReuseIdentifier: "BrandCell", for: indexPath) as? BrandCell {
         let brand = DataService.instance.getBrands()[indexPath.row]
         cell.updateViews(brand: brand)
         //the below line needs to be moved outside of the brackets of the next if statement per the 2 collection views video :)
         return cell
     }
     if (collectionView == ShoesByBrandCollectionView) {
         if let cell2 = ShoesByBrandCollectionView.dequeueReusableCell(withReuseIdentifier: "ShoesByBrandCell", for: indexPath) as? ShoeByBrandCell {
             let shoeByBrand = DataService.instance.getShoesByBrand(forBrandTitle: "Dior")[indexPath.row]
             cell2.updateShoeCollectionView(shoe: shoeByBrand)
             return cell2
         }
     }
     //below line also needs to be removed dependent on vid 2 maybe?
return BrandCell() }
}
 */

/*
 NEW UPDATED LAST WORKING CELLFORROWAT, basically to get to last working version, move "return ShoeByBrandCell()" down outside of the next bracket instead of its current one, and then, for some reason the last return has to be outside of an extra one, as you see with the current layout compared to prior collectionview cellforrowat's
 */
