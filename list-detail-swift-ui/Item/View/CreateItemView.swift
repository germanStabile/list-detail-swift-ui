//
//  CreateItemView.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 7/31/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI

struct CreateItemView: View {
  
  @ObservedObject var viewModel = CreateItemViewModel()
  
  var body: some View {
    GeometryReader { geometry in
      VStack(spacing: 10) {
        TextFieldView(fieldData: self.$viewModel.titleFieldData)
        
        
        TextView() {
          $0.text = self.viewModel.detail
          $0.delegate = self.viewModel
          $0.layer.borderColor = UIColor.systemRed.cgColor
          $0.layer.borderWidth = 1
          $0.textContainerInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        }
        .frame(
          minHeight: self.textViewHeight(with: geometry.size.width - 50),
          maxHeight: .infinity
        )
        .animation(.easeOut)
        .padding(.horizontal, 20)
        
        Spacer()
          .layoutPriority(1)
      }
      
    }
  }
  
  func textViewHeight(with width: CGFloat) -> CGFloat {
    let attributedString = NSAttributedString(
      string: viewModel.detail
    )
    
    let calculatedHeight = attributedString.height(withConstrainedWidth: width) + 10
    return max(calculatedHeight, 20)
  }
}

struct CreateItemView_Previews: PreviewProvider {
  static var previews: some View {
    CreateItemView()
  }
}
