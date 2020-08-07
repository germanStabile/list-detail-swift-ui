//
//  NavigationView.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 3/13/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI

struct RootView: View {
  
  @EnvironmentObject var router: ViewRouter
  
  var body: some View {
    VStack {
      containedView()
        .id(router.currentRoot)
        .transition(.slide).animation(.linear(duration: 0.2))
    }
  }
  
  func containedView() -> AnyView {
    switch router.currentRoot {
    case .list:
      return AnyView(ListView(items: [
        Item(
          title: "Add item",
          image: Image(systemName: "plus.circle"),
          isAddItem: true
        ),
        Item(
          title: "Title 1",
          detail: "Some long long detail for title 1 that can go for ages and ages and ages",
          image: nil
        ),
        Item(
          title: "Title 1",
          detail: "Some long long detail for title 1 that can go for ages and ages and ages",
          image: nil
        ),
        Item(
          title: "Title 1",
          detail: "Some long long detail for title 1 that can go for ages and ages and ages",
          image: nil
        ),
        Item(
          title: "Title 1",
          detail: "Some long long detail for title 1 that can go for ages and ages and ages",
          image: nil
        )
      ]))
    }
  }
}
