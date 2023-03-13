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
        
        let rows = categories.map {
            let arrangedSubviews = [
                Utility.createIcon($0),
                Utility.createName($0),
                Utility.createSpacer(),
                Utility.createAmount($0)
            ]
            
            return UIStackView(arrangedSubviews: arrangedSubviews,
                               spacing: 10,
                               axis: .horizontal)
        }
        
        let stackView = UIStackView(arrangedSubviews: rows,
                                    spacing: 10,
                                    axis: .vertical)
        view.addSubview(stackView)
        
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -100).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
