//
//  RoundView.swift
//  password
//
//  Created by LI,JYUN-SIAN on 14/6/23.
//

import UIKit

class RoundView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        makeRounded(borderColour: .darkText, borderWidth: 1.0)
    }
}
