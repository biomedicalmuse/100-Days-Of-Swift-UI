//
//  Order.swift
//  CupcakeCorner
//
//  Created by Natasha Godwin on 6/27/20.
//  Copyright © 2020 Natasha Godwin. All rights reserved.
//

import SwiftUI

class Order: ObservableObject {
    static let types = ["Vanilla", "Strawberry", "Chocolate", "Rainbow"]
    
    @Published var type = 0
    @Published var quantity = 3
    
    @Published var specialRequestEnabled = false {
        // Bug fix - make sure any selections for frosting or sprinkles are removed when the user deselects special requests
        didSet {
            if specialRequestEnabled == false {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    @Published var extraFrosting = false
    @Published var addSprinkles = false
}
