//
//  DynamicTypeTextStyles.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/29/24.
//

import SwiftUI

struct DynamicTypeTextStyles: View {
  var body: some View {
    VStack {
      Text("Welcome to my app!")
        .font(.largeTitle)
        .foregroundColor(.blue)
        .padding()
      
      Text("Explore the world")
        .font(.title)
        .fontWeight(.bold)
        .foregroundColor(.green)
        .padding()
      
      Text("Discover new places and experiences")
        .font(.headline)
        .padding()
      
      Text("Get inspired")
        .font(.subheadline)
        .foregroundColor(.purple)
        .padding()
      
      Text("Join our community")
        .font(.callout)
        .foregroundColor(.orange)
        .padding()
      
      Text("Share your adventures with us")
        .font(.footnote)
        .foregroundColor(.gray)
        .padding()
      
      Text("Follow us on social media")
        .font(.caption)
        .foregroundColor(.black)
        .padding()
    }
  }
}


#Preview {
    DynamicTypeTextStyles()
}
