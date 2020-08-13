//
//  ItemRowView.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 7/30/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI

struct ItemRowView: View {
  
  var item: Item
  
  var body: some View {
    HStack(spacing: 10) {
      image
        .resizable()
        .frame(width: 50, height: 50)
        .aspectRatio(contentMode: .fit)
        .cornerRadius(8)
        .padding(.vertical, 20)
      
      Text(item.title)
        .modifier(SubtitleModifier())
    }
  }

  var image: Image {
    return item.image ?? Image(systemName: "person.icloud.fill")
  }
}

struct ItemRowView_Previews: PreviewProvider {
  static var previews: some View {
    ItemRowView(item: Item(
      title: "Some title",
      detail: nil,
      image: nil
    ))
  }
}
