//
//  AttributedStringExtension.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 8/5/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import UIKit

extension NSAttributedString {
  
  func height(withConstrainedWidth width: CGFloat) -> CGFloat {
    let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
    let boundingBox = boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, context: nil)
    
    return ceil(boundingBox.height)
  }
}
