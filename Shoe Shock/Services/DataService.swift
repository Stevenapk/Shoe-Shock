//
//  DataService.swift
//  Shoe Shock
//
//  Created by Steven Sullivan on 6/10/22.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let brands = [
        Brand(title: "Dior"),
        Brand(title: "Dolce & Gabbana"),
        Brand(title: "Prada"),
        Brand(title: "Valentino Garavani")
    ]
    
    private let diorShoes = [
        Shoe(brandName: "Dior", name: "B27 High-Top", imageName: "NewB27High.jpeg", price: "$1,250.00", priceAsDouble: 1250.00, description: "The B27 high-top sneaker has become a House essential. Crafted in red, gray and white smooth calfskin, the style is adorned with beige and black Dior Oblique jacquard inserts on the sides. The sneaker is enhanced by 'CD Icon' eyelets as well as numerous hallmark details on the two-tone rubber sole, tongue and back. A cushioned collar completes the design with added comfort and support. The high-top sneaker will enhance any favorite outfit."),
        Shoe(brandName: "Dior", name: "B27 Low-Top", imageName: "NewB27Low.jpeg", price: "$1,150.00", priceAsDouble: 1150.00, description: "The B27 low-top sneaker is already a House essential. Crafted in blue, gray and white smooth calfskin, the style is adorned with beige and black Dior Oblique jacquard inserts on the sides. The sneaker is enhanced with 'CD Icon' eyelets as well as numerous hallmark details on the two-tone rubber sole, tongue and back. The low-top sneaker will enhance any favorite outfit."),
        Shoe(brandName: "Dior", name: "Nike Air Jordan 1 High Dior", imageName: "NewNikexDior.jpeg", price: "$11,000.00", priceAsDouble: 11000.00, description: "Limited to only 8500 pairs of Highs and 4700 pairs of Lows, both styles feature the Dior Gray color palette, an homage to one of Christian Dior’s most-loved hues. The shoes were handcrafted in Italy from calfskin leather and accented with Dior’s signature Oblique monogram jacquard Swooshes. Dior and Air Jordan’s iconic branding are mixed on the Wings logo, tongue labels and outsole graphics."),
        Shoe(brandName: "Dior", name: "B30", imageName: "NewB30.jpeg", price: "$1,150.00", priceAsDouble: 1150.00, description: "The B30 sneaker has become a new House essential distinguished by its modern and sporty silhouette. Crafted in black mesh and technical fabric, it is enhanced by a reflective tonal 'CD30' signature with a graphic aesthetic. The B30 also features silver-tone 'DIOR B30' and 'CD30' signatures on the tongue and the back of the sneaker. A sculpted and ultra-lightweight rubber outsole spotlights various hallmark details.")
        
    ]
    
    private let dolceAndGabbanaShoes = [
        Shoe(brandName: "Dolce & Gabbana", name: "Calfskin Portofino sneakers", imageName: "NewPortofino.jpeg", price: "$745.00", priceAsDouble: 745.00, description: "These iconic Portofino sneakers in calfskin nappa feature a spoiler on the back with the micro-injected rubberized logo. This new version comes branded with the DG logo stenciled on the side."),
        Shoe(brandName: "Dolce & Gabbana", name: "Airmaster sneakers", imageName: "NewAirmaster.jpeg", price: "$895.00", priceAsDouble: 895.00, description: "The Air Master sneakers feature an ultra-light upper and have been inspired by our iconic Daymaster sneakers and are perfect for wearing when off-duty. Coming in nylon and calfskin, they feature suede details and a rubber label with micro-injection logo."),
        Shoe(brandName: "Dolce & Gabbana", name: "Calfskin Custom 2.Zero", imageName: "NewCalfskin.jpeg", price: "$995.00", priceAsDouble: 995.00, description: "The latest version of the Custom 2.Zero features a transparent rubber sole and the new spoiler with the maxi-logo. Coming in calfskin, suede and nylon, it features a perforated gum detail on the side that distinguishes it."),
        Shoe(brandName: "Dolce & Gabbana", name: "Los Angeles NS1 Slip-on", imageName: "NewLA.jpeg", price: "$1,095.00", priceAsDouble: 1095.00, description: "Flaunting bold, urban style, these NS1 sneakers have been completely hand painted and are dedicated to the city of “LOS ANGELES”. Coming in mixed materials, such as nylon, split leather and rubberized calfskin, they feature a super-flex rubber sole, side details and tongue in thermoformed spandex fabric created using a high-frequency technique.")
    ]
    
    private let pradaShoes = [
        Shoe(brandName: "Prada", name: "District Leather sneakers", imageName: "District Leather.jpeg", price: "$1,150.00", priceAsDouble: 1150.00, description: "These sporty leather high-top sneakers are accented with different interpretations of the Prada logo that appears on the tongue, along the light rubber sole, and as a rubber triangle decorating the side of the ankle."),
        Shoe(brandName: "Prada", name: "Downtown leather sneakers", imageName: "Downtown leather sneakers.jpeg", price: "$995.00", priceAsDouble: 995.00, description: "These sporty leather sneakers are accented with different interpretations of the Prada logo that appears on the tongue, along the light rubber sole, and as the iconic enameled metal triangle decorating the side of the upper."),
        Shoe(brandName: "Prada", name: "Cass x Prada Cup D3cay", imageName: "Cass x Prada America's Cup D3cay sneakers.jpeg", price: "$1,890.00", priceAsDouble: 1890.00, description: "In a unique collaboration, artist Cassius Hirst reinvents the iconic Prada America's Cup sneakers in four different styles with the names Att4ck, D3cay, Sust4in and Rel3ase referring to ADSR, a common type of music controlling parameters. For D3cay designs, the construction requires the most steps: after applying different color shades, the shoes are specially treated to create a distressed effect, finished with a transparent coating."),
        Shoe(brandName: "Prada", name: "Prada PRAX 01 sneakers", imageName: "Prada PRAX 01 sneakers.jpeg", price: "$925.00", priceAsDouble: 925.00, description: "PRAX 01 sneakers are characterized by their elegant yet innovative design. The soft leather upper with mesh inserts are paired with a chunky rubber tread sole. Stitching trims the laced shoe.")
    ]
    
    private let valentinoGaravaniShoes = [
        Shoe(brandName: "Valentino Garavani", name: "Gumboy Sneaker in Calfskin", imageName: "NewGumboyShoe.jpeg", price: "$780.00", priceAsDouble: 780.00, description: "Valentino Garavani Gumboy sneaker in calfskin and suede with a heat-embossed logo on the tongue, Valentino Garavani side logo print, and a hand-painted multicolor sole."),
        Shoe(brandName: "Valentino Garavani", name: "Neon Camou Rockrunner", imageName: "NewNeonV.jpeg", price: "$690.00", priceAsDouble: 690.00, description: "Valentino Garavani Neon Camou Rockrunner sneaker in nylon, with rubber stud details, and a rubber sole."),
        Shoe(brandName: "Valentino Garavani", name: "Crochet Sneaker in Fabric", imageName: "NewFabric.jpeg", price: "$980.00", priceAsDouble: 980.00, description: "Valentino Garavani Crochet sneaker in woven fabric, with handmade upper created using woven tubular fabric bands, a suede label with Valentino Garavani rubber logo on the tongue, and the VLogo Signature detail on the heel."),
        Shoe(brandName: "Valentino Garavani", name: "Giggies Low-top Fabric", imageName: "NewGiggies.jpeg", price: "$590.00", priceAsDouble: 590.00, description: "The Valentino Garavani Giggies low-top fabric sneaker sports Rubber VLTN tag detail, tonal jacquard VLTN logo laces, and a rubber sole with debossed VLTN detail.")
    ]
    
    private let popularShoes = [
        Shoe(brandName: "Prada", name: "Prada PRAX 01 sneakers", imageName: "Prada PRAX 01 sneakers.jpeg", price: "$925.00", priceAsDouble: 925.00, description: "PRAX 01 sneakers are characterized by their elegant yet innovative design. The soft leather upper with mesh inserts are paired with a chunky rubber tread sole. Stitching trims the laced shoe."),
        Shoe(brandName: "Prada", name: "Downtown leather sneakers", imageName: "Downtown leather sneakers.jpeg", price: "$995.00", priceAsDouble: 995.00, description: "These sporty leather sneakers are accented with different interpretations of the Prada logo that appears on the tongue, along the light rubber sole, and as the iconic enameled metal triangle decorating the side of the upper."),
        Shoe(brandName: "Dolce & Gabbana", name: "Los Angeles NS1 Slip-on", imageName: "NewLA.jpeg", price: "$1,095.00", priceAsDouble: 1095.00, description: "Flaunting bold, urban style, these NS1 sneakers have been completely hand painted and are dedicated to the city of “LOS ANGELES”. Coming in mixed materials, such as nylon, split leather and rubberized calfskin, they feature a super-flex rubber sole, side details and tongue in thermoformed spandex fabric created using a high-frequency technique."),
        Shoe(brandName: "Dolce & Gabbana", name: "Airmaster sneakers", imageName: "NewAirmaster.jpeg", price: "$895.00", priceAsDouble: 895.00, description: "The Air Master sneakers feature an ultra-light upper and have been inspired by our iconic Daymaster sneakers and are perfect for wearing when off-duty. Coming in nylon and calfskin, they feature suede details and a rubber label with micro-injection logo."),
        Shoe(brandName: "Dior", name: "Nike Air Jordan 1 High Dior", imageName: "NewNikexDior.jpeg", price: "$11,000.00", priceAsDouble: 11000.00, description: "Limited to only 8500 pairs of Highs and 4700 pairs of Lows, both styles feature the Dior Gray color palette, an homage to one of Christian Dior’s most-loved hues. The shoes were handcrafted in Italy from calfskin leather and accented with Dior’s signature Oblique monogram jacquard Swooshes. Dior and Air Jordan’s iconic branding are mixed on the Wings logo, tongue labels and outsole graphics."),
        Shoe(brandName: "Dior", name: "B27 Low-Top", imageName: "NewB27Low.jpeg", price: "$1,150.00", priceAsDouble: 1150.00, description: "The B27 low-top sneaker is already a House essential. Crafted in blue, gray and white smooth calfskin, the style is adorned with beige and black Dior Oblique jacquard inserts on the sides. The sneaker is enhanced with 'CD Icon' eyelets as well as numerous hallmark details on the two-tone rubber sole, tongue and back. The low-top sneaker will enhance any favorite outfit."),
        Shoe(brandName: "Valentino Garavani", name: "Gumboy Sneaker in Calfskin", imageName: "NewGumboyShoe.jpeg", price: "$780.00", priceAsDouble: 780.00, description: "Valentino Garavani Gumboy sneaker in calfskin and suede with a heat-embossed logo on the tongue, Valentino Garavani side logo print, and a hand-painted multicolor sole."),
        Shoe(brandName: "Prada", name: "Cass x Prada Cup D3cay", imageName: "Cass x Prada America's Cup D3cay sneakers.jpeg", price: "$1,890.00", priceAsDouble: 1890.00, description: "In a unique collaboration, artist Cassius Hirst reinvents the iconic Prada America's Cup sneakers in four different styles with the names Att4ck, D3cay, Sust4in and Rel3ase referring to ADSR, a common type of music controlling parameters. For D3cay designs, the construction requires the most steps: after applying different color shades, the shoes are specially treated to create a distressed effect, finished with a transparent coating.")
        ]
    
    func getBrands() -> [Brand] {
        return brands
    }
    
    func getPopularShoes() -> [Shoe] {
        return popularShoes
    }
    
    func getShoesByBrand(forBrandTitle title:String) -> [Shoe] {
        switch title {
        case "Dior":
            return getDiorShoes()
        case "Dolce & Gabbana":
            return getDGShoes()
        case "Prada":
            return getPradaShoes()
        case "Valentino Garavani":
            return getValentinoGaravaniShoes()
        default:
            return getDiorShoes()
        }
    }
    
    func getDiorShoes() -> [Shoe] {
        return diorShoes
    }
    
    func getDGShoes() -> [Shoe] {
        return dolceAndGabbanaShoes
    }
    
    func getPradaShoes() -> [Shoe] {
        return pradaShoes
    }
    
    func getValentinoGaravaniShoes() -> [Shoe] {
        return valentinoGaravaniShoes
    }
    
    func getShoe(for shoe: Shoe) -> Shoe {
        return shoe //Shoe instance to be passed into the Details VC instead of a String once you figure out how :)
    }
    
//    private let brands = [
//    ]
}
