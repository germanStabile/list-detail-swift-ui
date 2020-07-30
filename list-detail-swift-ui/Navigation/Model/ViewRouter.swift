//
//  ViewRouter.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 3/13/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import Foundation
import Combine

enum Roots {
  case list
}

class ViewRouter: ObservableObject {
  @Published var currentRoot: Roots = .list
  
  static let shared = ViewRouter()
  
  fileprivate init() { }
}
