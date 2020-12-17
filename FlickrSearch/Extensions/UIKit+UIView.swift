//
//  UIKit+UIView.swift
//  FlickrSearch
//
//  Created by SMMC on 17/12/2020.
//

import UIKit

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor?,
                leading: NSLayoutXAxisAnchor?,
                bottom: NSLayoutYAxisAnchor?,
                trailing: NSLayoutXAxisAnchor?,
                padding: UIEdgeInsets = .zero,
                size: CGSize = .zero) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
    
    func fillSuperview(padding: UIEdgeInsets = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        guard let superview = superview else { return }
        topAnchor.constraint(equalTo: superview.topAnchor, constant: padding.top).isActive = true
        
        leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: padding.left).isActive = true
        
        bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -padding.bottom).isActive = true
        
        trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -padding.right).isActive = true
        
        widthAnchor.constraint(equalTo: superview.widthAnchor).isActive = true
        heightAnchor.constraint(equalTo: superview.heightAnchor).isActive = true
    }
    
    func centerInSuperview(size: CGSize = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        guard let superview = superview else { return }
        
        centerXAnchor.constraint(equalTo: superview.centerXAnchor).isActive = true
        centerYAnchor.constraint(equalTo: superview.centerYAnchor).isActive = true
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
}
