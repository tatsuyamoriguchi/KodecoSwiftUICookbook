//
//  MultilineTextView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/29/24.
//

import SwiftUI

struct MultilineTextView1: View {
  var body: some View {
    Text("Hello!\nWelcome to our app. We're so glad you're here. \n\nYou will love everything we have to offer.")
  }
}

struct MultilineTextView2: View {
  var body: some View {
    let name = "Sarah"
    let message = "Hello, \(name)!\nThanks for using our app. \n\nWe hope you have a great experience."
    Text(message)
  }
}

struct MultilineTextView: View {
  var body: some View {
    Text("Why do programmers always mix up Halloween and Christmas?\nBecause Oct 31 == Dec 25!")
      .lineLimit(3)
      .multilineTextAlignment(.center)
      .padding()
  }
}



#Preview {
    MultilineTextView()
}
