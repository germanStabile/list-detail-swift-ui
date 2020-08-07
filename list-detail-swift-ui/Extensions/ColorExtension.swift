//
//  ColorExtension.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 3/11/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI
import Foundation

extension Color {
  
  static let darkGray = UIColor.darkGray.asColor()
  static let athensGray = UIColor.athensGray.asColor()
  static let altoGray = UIColor.altoGray.asColor()
  static let cadetBlue = UIColor.cadetBlue.asColor()
  static let lightGray = UIColor.lightGray.asColor()
  static let errorRed = UIColor.errorRed.asColor()
}

extension UIColor {
  convenience init(red: Int, green: Int, blue: Int) {
    self.init(red: min(CGFloat(red), 255.0) / 255.0,
              green: min(CGFloat(green), 255.0) / 255.0,
              blue: min(CGFloat(blue), 255.0) / 255.0,
              alpha: 1.0)
  }
  
  func asColor() -> Color {
    return Color(self)
  }
  
  static let darkGray = UIColor(red: 54, green: 61, blue: 79)
  static let athensGray = UIColor(red: 229, green: 231, blue: 237)
  static let altoGray = UIColor(red: 216, green: 216, blue: 216)
  static let cadetBlue = UIColor(red: 167, green: 175, blue: 199)
  static let lightGray = UIColor(red: 167, green: 175, blue: 199)
  static let errorRed = UIColor(red: 255, green: 81, blue: 82)
}
