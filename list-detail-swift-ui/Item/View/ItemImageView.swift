//
//  ItemImageView.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 8/7/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI

struct ItemImageView: View {
  
  @Binding var image: Image?
  @Binding var isShowingImagePicker: Bool
  
  var body: some View {
    ZStack(alignment: .bottomTrailing) {
      
      itemImage
        .resizable()
        .frame(width: 200, height: 200)
        .cornerRadius(8)
      
      Button(action: { self.editAvatarButtonTapped() }) {
        Image(systemName: "pencil.circle")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 40, height: 40)
          .foregroundColor(.blue)
        
      }
      .padding(EdgeInsets(
        top: 0,
        leading: 0,
        bottom: 5,
        trailing: -15
      ))
    }
  }
  
  var itemImage: Image {
    image ?? Image(systemName: "camera")
  }
  
  func editAvatarButtonTapped() {
    isShowingImagePicker = true
  }
}

struct ItemImageView_Previews: PreviewProvider {
  struct BindingTestHolder: View {
    @State var image: Image? = nil
    @State var isShowingImagePicker = false
    
    var body: some View {
      ItemImageView(
        image: $image,
        isShowingImagePicker: $isShowingImagePicker
      )
    }
  }
  
  static var previews: some View {
    BindingTestHolder()
  }
}
