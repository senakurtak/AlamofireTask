//
//  Products.swift
//  SenaEmirTask
//
//  Created by Sena Kurtak on 29.05.2022.
//

import Foundation

struct Product : Codable, Hashable{
    var id : Int = 0
    var unitPrice : Double = 0.0
    var unitsInStock : Int = 0
    var discontinued : Bool = false
    var name : String = ""
}

