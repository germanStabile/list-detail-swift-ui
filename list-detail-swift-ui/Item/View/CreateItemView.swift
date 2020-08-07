//
//  CreateItemView.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 7/31/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI

struct CreateItemView: View {
  
  @State var isShowingImagePicker = false
  @State private var image: Image?
  @ObservedObject var viewModel = CreateItemViewModel()
  
  var body: some View {
    VStack(spacing: 20) {
      
      ItemImageView(
        image: $image,
        isShowingImagePicker: $isShowingImagePicker
      )
        .frame(alignment: .top)
      
      TextFieldView(fieldData: $viewModel.titleFieldData)
        .padding(.top, 40)
      
      Text("Description:")
        .modifier(SubtitleModifier(
          foregroundColor: .lightGray,
          horizontalPadding: 20
        ))
      
      TextView() {
        $0.text = self.viewModel.detail
        $0.delegate = self.viewModel
        $0.layer.borderColor = UIColor.altoGray.cgColor
        $0.layer.borderWidth = 1
      }
      .frame(height: 150)
      .padding(.horizontal, 20)
      
      .sheet(isPresented: $isShowingImagePicker, onDismiss: loadImage) {
        ImagePicker(image: self.$viewModel.image)
      }
      
      Spacer()
    }
  }
  
  func loadImage() {
    guard let inputImage = viewModel.image else { return }
    image = Image(uiImage: inputImage)
  }
}

struct CreateItemView_Previews: PreviewProvider {
  static var previews: some View {
    CreateItemView()
  }
}
