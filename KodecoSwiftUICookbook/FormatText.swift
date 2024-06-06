//
//  FormatText.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/29/24.
//

import SwiftUI

struct FormatText1: View {
  var body: some View {
    Text("Hello ")
      .fontWeight(.bold)
      .italic()
    + Text("World")
      .underline()
  }
}

struct FormatText2: View {
  var body: some View {
    Text("**Bold** and _italic_ text!")
  }
}

let quote = """
**"Be yourself;** everyone else is _already taken._"
- **Oscar Wilde**
"""
let attributedQuote = try! AttributedString(markdown: quote)

struct FormatText: View {
  var body: some View {
    Text(attributedQuote)
      .font(.system(size: 16, weight: .medium, design: .serif))
      .foregroundColor(.blue)
  }
}


#Preview {
    FormatText()
}
