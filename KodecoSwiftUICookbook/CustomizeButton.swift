//
//  CustomizeButton.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/7/24.
//

import SwiftUI

struct CustomizeButton: View {
    var body: some View {
        Button("Click Me") {
            print("Button Clicked")
        }
        .padding()
        .background(.mint)
        .foregroundColor(.white)
        .font(.title)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    CustomizeButton()
}
