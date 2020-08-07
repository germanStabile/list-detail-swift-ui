//
//  SubtitleModifier.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 7/30/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI

struct SubtitleModifier: ViewModifier {
  var foregroundColor: Color = .black
  var textAlignment: TextAlignment = .center
  var horizontalPadding: CGFloat = 5
  var verticalPadding: CGFloat = 5
  
  func body(content: Content) -> some View {
    content
      .padding(.vertical, verticalPadding)
      .padding(.horizontal, horizontalPadding)
      .foregroundColor(foregroundColor)
      .font(.subheadline)
      .multilineTextAlignment(textAlignment)
  }
}

struct SubtitleModifier_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      Text("Hello, World!")
        .previewLayout(.sizeThatFits)
      
      Text("Hello, World!")
        .modifier(SubtitleModifier())
        .previewLayout(.sizeThatFits)
    }
  }
}
