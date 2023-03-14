//
//  UIView+Extensions.swift
//  Rows
//
//  Created by Pat Garner on 3/13/23.
//

import UIKit

extension UIView {
    func clampHigh() {
        self.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        self.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
    }
    
    func clampLow() {
        self.setContentHuggingPriority(.defaultLow, for: .horizontal)
        self.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
    }
}

extension UIStackView {
    convenience init(_ category: Category) {
        self.init(Utility.rowViews(for: category))
    }
    
    convenience init(_ arrangedSubviews: [UIView],
                     spacing: Double = 10,
                     axis: NSLayoutConstraint.Axis = .horizontal) {
        self.init(arrangedSubviews: arrangedSubviews)
        fill(with: spacing, axis: axis)
    }
    
    @discardableResult func fill(with spacing: Double,
                                 axis: NSLayoutConstraint.Axis) -> UIStackView {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.alignment = .fill
        self.distribution = .fill
        self.spacing = spacing
        self.axis = axis
        return self
    }
    
    func anchorCenter(to view: UIView, padding: CGFloat = 100) {
        view.addSubview(self)
        widthAnchor.constraint(equalTo: view.widthAnchor, constant: -padding).isActive = true
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
