//
//  CreateTextField.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/30/24.
//

import SwiftUI

struct CreateTextField: View {
  @State private var name = ""
  var body: some View {
    TextField("Enter your name", text: $name)
      .multilineTextAlignment(.center)
  }
}

struct CustomizeTextField: View {
  @State private var name = ""
  var body: some View {
    TextField("Enter your name", text: $name)
      .foregroundColor(.blue)
      .background(.yellow)
      .font(.largeTitle)
      .multilineTextAlignment(.center)
  }
}


#Preview {
//    CreateTextField()
    CustomizeTextField()
}
