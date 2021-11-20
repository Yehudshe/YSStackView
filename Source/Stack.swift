//
//  Stack.swift
//  StackAllTheThingsDemo
//
//  Created by Alex Nagy on 19/11/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import UIKit

extension UIView {
    
    fileprivate func Stack(_ axis: NSLayoutConstraint.Axis = .vertical, views: [UIView], spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill, distribution: UIStackView.Distribution = .fill) -> UIStackView {
        
        let stakView = UIStackView(arrangedSubviews: views)
        stakView.axis = axis
        stakView.alignment = alignment
        stakView.spacing = spacing
        stakView.distribution = distribution
        addSubview(stakView)
        stakView.edgeTo(self)

return stakView
        
        
    }
    
    @discardableResult
    open func VStack(_ views: UIView..., spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill, distribution: UIStackView.Distribution = .fill) -> UIStackView {
        
        return Stack(.vertical, views: views, spacing: spacing, alignment: alignment, distribution: distribution)
    }
    
    @discardableResult
    open func HStack(_ views: UIView..., spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill, distribution: UIStackView.Distribution = .fill) -> UIStackView {
        return Stack(.horizontal, views: views, spacing: spacing, alignment: alignment, distribution: distribution)
    }
    
}
