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
    convenience init(arrangedSubviews: [UIView], spacing: Double, axis: NSLayoutConstraint.Axis) {
        self.init(arrangedSubviews: arrangedSubviews)
        fill(with: spacing, axis: axis)
    }
    
    @discardableResult func fill(with spacing: Double, axis: NSLayoutConstraint.Axis) -> UIStackView {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.alignment = .fill
        self.distribution = .fill
        self.spacing = spacing
        self.axis = axis
        return self
    }
}
