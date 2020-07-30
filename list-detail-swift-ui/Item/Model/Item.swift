//
//  Item.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 7/30/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI

struct Item: Identifiable {
  
  let id = UUID()
  var title: String
  var detail: String?
  var image: Image?
}
