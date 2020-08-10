//
//  ListView.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 7/30/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI

struct ListView: View {
  
  @ObservedObject var viewModel = ListViewModel()
  
  var body: some View {
    NavigationView {
      List(viewModel.items, id: \.id) { item in
        NavigationLink(destination: {
          VStack {
            if item.isAddItem {
              CreateItemView(with: self.viewModel)
            } else {
              ItemView(item: item)
            }
          }
        }()) {
          ItemRowView(item: item)
        }
      }
    }
  }
}

struct ListView_Previews: PreviewProvider {
  static var previews: some View {
    ListView()
  }
}
