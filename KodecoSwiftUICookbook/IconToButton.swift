//
//  IconToButton.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/9/24.
//

import SwiftUI

struct IconToButton: View {
    var body: some View {
        VStack {
            Button(action: {
                print("Hello")
            }) {
                Label("Show Some Love", systemImage: "heart.fill")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
        }
    }
}

#Preview {
    IconToButton()
}
