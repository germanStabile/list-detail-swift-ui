//
//  ListView.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 7/30/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI

struct ListView: View {
  
  var items: [Item]
  
  var body: some View {
    NavigationView {
      List(items, id: \.id) { item in
        NavigationLink(destination: ItemView(item: item)) {
          ItemRowView(item: item)
        }
      }
    }
  }
}

struct ListView_Previews: PreviewProvider {
  static var previews: some View {
    ListView(items: [
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
    ])
  }
}
