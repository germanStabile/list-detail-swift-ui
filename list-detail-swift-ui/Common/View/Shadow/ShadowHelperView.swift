//
//  TopShadowView.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 8/13/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI

struct ShadowHelperView: View {
  var cornerRadius: CGFloat = 25
  var height: CGFloat = 50
  
  var body: some View {
    Rectangle()
      .frame(height: height)
      .cornerRadius(cornerRadius)
      .foregroundColor(.white)
      .shadow(color: .darkGray, radius: 25)
  }
}

struct TopShadowView_Previews: PreviewProvider {
  static var previews: some View {
    ShadowHelperView()
  }
}
