//
//  DebuggingSwiftUICode.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/15/24.
//

import SwiftUI

struct DebuggingSwiftUICode: View {
    @State private var counter = 0

    var body: some View {
      VStack {
        Text("Here's the count: \(counter)")
          .padding()
        Button("Increase Counter") {
          counter += 1
        }
      }
    }
}

#Preview {
    DebuggingSwiftUICode()
}
