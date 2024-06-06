//
//  StylingText.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/29/24.
//

import SwiftUI

struct StylingText: View {
  var body: some View {
    Text("Hello, 1982 world!")
      // 1
      .font(.custom("Papyrus", size: 24))
      // 2
      .foregroundColor(.purple)
      // 3
      .frame(maxWidth: .infinity, alignment: .leading)
      // 4
      .padding()
  }
}

#Preview {
    StylingText()
}
