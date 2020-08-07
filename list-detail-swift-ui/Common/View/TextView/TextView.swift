//
//  TextView.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 8/5/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI

struct TextView: UIViewRepresentable {
  
  var configuration = { (view: UITextView) in }
  
  func makeUIView(context: UIViewRepresentableContext<Self>) -> UITextView {
    UITextView()
  }
  
  func updateUIView(_ uiView: UITextView, context: UIViewRepresentableContext<Self>) {
    configuration(uiView)
  }
}
