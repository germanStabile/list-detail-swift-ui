//
//  CreateItemViewModel.swift
//  list-detail-swift-ui
//
//  Created by Germán Stábile on 8/5/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import UIKit

class CreateItemViewModel: NSObject, ObservableObject, Identifiable {
  
  @Published var titleFieldData = TextFieldData(
    title: "Title",
    value: "",
    validationType: .nonEmpty,
    errorMessage: "Title can't be empty"
  )
  
  @Published var image: UIImage?
  
  var isValid: Bool {
    titleFieldData.isValid && image != nil
  }
  
  var detail = ""
}

extension CreateItemViewModel: UITextViewDelegate {
  func textViewDidChange(_ textView: UITextView) {
    detail = textView.text
  }
}
