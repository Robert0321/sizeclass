//
//  RoundViewExtension.swift
//  password
//
//  Created by LI,JYUN-SIAN on 14/6/23.
//

import UIKit

extension UIView {

    func makeRounded(borderColour: UIColor, borderWidth: CGFloat) {
        layer.cornerRadius = (frame.size.width < frame.size.height) ? frame.size.width / 2.0 : frame.size.height / 2.0
        layer.borderColor = borderColour.cgColor
        layer.borderWidth = borderWidth
    }
}
