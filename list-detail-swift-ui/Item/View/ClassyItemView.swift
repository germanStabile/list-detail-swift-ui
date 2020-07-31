//
//  ClassyItemView.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 7/31/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI

struct ClassyItemView: View {
  
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
        
        VStack {
          Text(item.title)
            .modifier(MainTitle())
          
          if item.detail != nil {
            Text(item.detail!)
              .modifier(SubtitleModifier())
          }
        }
        .frame(maxWidth: .infinity)
        .padding(.bottom, 0)
        .background(Color.white)
        .cornerRadius(25, corners: [.topLeft, .topRight])
        .shadow(color: .darkGray, radius: 25, x: 0, y: 0)
      }
    }
    .edgesIgnoringSafeArea(.all)
    .background(Color.white.edgesIgnoringSafeArea(.all))
  }
  
  var image: Image {
    return item.image ?? Image(systemName: "person.icloud.fill")
  }
}

struct ClassyItemView_Previews: PreviewProvider {
  static var previews: some View {
    ClassyItemView(item: Item(
      title: "Some title",
      detail: "Some detail that can be a really long text",
      image: nil
    ))
  }
}
