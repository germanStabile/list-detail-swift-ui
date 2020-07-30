//
//  SubtitleModifier.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 7/30/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI

struct SubtitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .padding()
      .foregroundColor(.black)
      .font(.subheadline)
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
