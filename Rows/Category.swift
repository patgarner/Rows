//
//  Category.swift
//  Rows
//
//  Created by Pat Garner on 3/13/23.
//

import UIKit

struct Category {
    static let categories = [Category("fuelpump.circle.fill", "Gas", .blue, amount: 100),
                             Category("cart.circle.fill", "Groceries", .red, amount: 75),
                             Category("fish.circle.fill", "Pets", .green, amount: 50),
                             Category("arrow.up.backward.and.arrow.down.forward.circle.fill", "Arrows", .brown, amount: 25)]
    
    var image: String
    var name: String
    var color: UIColor
    var amount: Int
    
    init(_ image: String, _ name: String, _ color: UIColor, amount: Int) {
        self.image = image
        self.name = name
        self.color = color
        self.amount = amount
    }
}
