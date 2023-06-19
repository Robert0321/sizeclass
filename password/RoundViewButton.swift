//
//  RoundViewButton.swift
//  password
//
//  Created by LI,JYUN-SIAN on 14/6/23.
//

import UIKit

class RoundButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        makeRounded(borderColour: .darkText, borderWidth: 1.0)
    }
}
