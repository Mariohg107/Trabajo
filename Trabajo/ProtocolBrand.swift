//
//  ProtocolBrand.swift
//  Trabajo
//
//  Created by Alumnos on 7/10/22.
//

import Foundation

protocol ProtocolBrand{
    
    
    var imageUrl: String { get set}
    var name: String { get set}
    var description: String { get set}

    func getImageUrl() -> String
    func getName() -> String
    func getDescription() -> String
    
}
