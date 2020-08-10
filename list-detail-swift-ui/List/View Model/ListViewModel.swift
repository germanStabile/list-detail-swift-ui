//
//  ListViewModel.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 8/10/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI

class ListViewModel: Identifiable, ObservableObject {
  
  @Published var items: [Item] = [Item(
    title: "Add item",
    image: Image(systemName: "plus.circle"),
    isAddItem: true
    )]
  
  init() {
    items.append(contentsOf: mockedItems)
  }
  
  var mockedItems: [Item] {
    [
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
    ]
  }
}

extension ListViewModel: CreateItemDelegate {
  func didCreate(item: Item) {
    items.append(item)
  }
}
