//
//  Utility.swift
//  Rows
//
//  Created by Pat Garner on 3/13/23.
//

import UIKit

struct Utility {
    static func rowViews(for category: Category) -> [UIView] {
         [createIcon(category), createName(category), createSpacer(), createAmount(category)]
    }
    
    static func createIcon(_ category: Category) -> UIImageView {
        let image = UIImage(systemName: category.image)
        let icon = UIImageView(image:image)
        icon.contentMode = .scaleAspectFill
        icon.tintColor = category.color
        icon.clampHigh()
        return icon
    }
    
    static func createName(_ category: Category) -> UILabel {
        let name = UILabel()
        name.text = category.name
        name.clampHigh()
        return name
    }
    
    static func createAmount(_ category: Category) -> UILabel {
        let amount = UILabel()
        amount.font = UIFont.boldSystemFont(ofSize: 14)
        amount.text = "$\(category.amount)"
        amount.widthAnchor.constraint(equalToConstant: 50).isActive = true
        amount.layer.cornerRadius = 4
        amount.layer.masksToBounds = true
        amount.textAlignment = .center
        amount.backgroundColor = .gray
        amount.textColor = .black
        amount.clampHigh()
        return amount
    }
    
    static func createSpacer() -> UIView {
        let spacer = UIView(frame: CGRect(x: 0, y: 0, width: 10000, height: 10))
        spacer.clampLow()
        return spacer
    }    
}
