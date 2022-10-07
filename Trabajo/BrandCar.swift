//
//  BrandCar.swift
//  Trabajo
//
//  Created by Alumnos on 7/10/22.
//

import Foundation

class BrandCar : ProtocolBrand{
    
    
    var imageUrl: String = ""
    var name : String = ""
    var description : String = ""
    
    
     init (imageUrl: String, brandName : String, description : String){
        
        self.imageUrl = imageUrl
        self.name = brandName
        self.description = description
    }
    
    
    func getImageUrl() -> String {
        return imageUrl
    }
    
    func getName() -> String {
        return name
    }
    
    func getDescription() -> String {
        return description
    }
    
   
}
