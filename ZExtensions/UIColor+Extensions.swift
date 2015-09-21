//
//  UIColor+Extensions.swift
//  ZExtensions
//
//  Created by Di Wu on 9/1/15.
//  Copyright (c) 2015 ZOYI. All rights reserved.
//

import UIKit


public extension UIColor {

  public convenience init(hex: String, alpha: CGFloat) {
    var hexString = hex
    if hexString.hasPrefix("#") {
      hexString = hexString.substringFromIndex(hexString.startIndex.advancedBy(1))
    }

    if hexString.characters.count != 6 {
      self.init(white: 1, alpha: 1)
    } else {
      var hexValue: UInt32 = 0
      NSScanner(string: hexString).scanHexInt(&hexValue)
      self.init(red:   CGFloat((hexValue & 0xFF0000) >> 16) / 0xFF,
        green: CGFloat((hexValue & 0x00FF00) >> 8) / 0xFF,
        blue:  CGFloat(hexValue & 0x0000FF) / 0xFF,
        alpha: alpha)
    }
  }

  public convenience init(hex: String) {
    self.init(hex: hex, alpha: 1)
  }
}

