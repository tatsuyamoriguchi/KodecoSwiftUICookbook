//
//  CreateButton.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/7/24.
//

import SwiftUI

struct CreateButton: View {
    var body: some View {
        Button("Click Me") {
            // Action
        }
        .font(.headline)
        .padding()
        .foregroundColor(.white)
        .background(.mint)
        .cornerRadius(15)
    }
}

#Preview {
    CreateButton()
}
