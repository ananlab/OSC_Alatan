//
//  UIColor+Extention.swift
//  OSC_Alatan
//
//  Created by maiziedu on 11/12/15.
//  Copyright © 2015 Alatan. All rights reserved.
//

import UIKit

class UIColor_Extention: UIColor {

}

extension UIColor {
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
