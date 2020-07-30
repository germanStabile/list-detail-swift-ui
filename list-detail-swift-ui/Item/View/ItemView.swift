//
//  ItemView.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 7/30/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI

struct ItemView: View {
  
  var item: Item
  
  var body: some View {
    VStack(spacing: 5) {
      image
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(maxWidth: .infinity, maxHeight: 200)
        .background(Color.red)
        .padding(.top, 0)
      
      Text(item.title)
        .modifier(MainTitle())
      
      if item.detail != nil {
       Text(item.detail!)
        .modifier(SubtitleModifier())
      }
    }
    .background(Color.blue)
  }
  
  var image: Image {
    return item.image ?? Image(systemName: "person.icloud.fill")
  }
}

struct ItemView_Previews: PreviewProvider {
  static var previews: some View {
    ItemView(item: Item(
      title: "Some title",
      detail: "Some detail that can be a really long text",
      image: nil
    ))
  }
}
