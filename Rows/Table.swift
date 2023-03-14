//
//  Table.swift
//  Rows
//
//  Created by Pat Garner on 3/13/23.
//

import UIKit

struct Table {
    static func createTable(with categories: [Category],
                            in view: UIView) {
        
        UIStackView(categories.map(UIStackView.init), axis: .vertical).anchorCenter(to: view)
    }
}
