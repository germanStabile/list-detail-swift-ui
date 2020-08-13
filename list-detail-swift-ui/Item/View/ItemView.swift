//
//  ClassyItemView.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 7/31/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI

struct ItemView: View {
  
  var item: Item
  
  var body: some View {
    VStack {
      ScrollView(.vertical, showsIndicators: false) {
        GeometryReader { reader in
          self.image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .offset(y: -reader.frame(in: .global).minY)
            .frame(width: UIScreen.main.bounds.width, height:  reader.frame(in: .global).minY + 300)
        }
        .frame(height: 280)
        
        ZStack(alignment: .top) {
          ShadowHelperView()
          
          VStack {
            Text(item.title)
              .modifier(MainTitle())
            
            if item.detail != nil {
              Text(item.detail!)
                .modifier(SubtitleModifier())
            }
            
            Rectangle()
              .foregroundColor(Color.white)
              .frame(height: 100)
          }
          .frame(minWidth: 0, maxWidth: .infinity)
          .background(Color.white)
          .cornerRadius(25, corners: [.topLeft, .topRight])
        }
      }
    }
    .edgesIgnoringSafeArea(.all)
    .background(Color.white.edgesIgnoringSafeArea(.all))
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
