//
//  CustomizingPreviews.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/16/24.
//

import SwiftUI

struct CustomizingPreviews: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background()
    }
}

#Preview {
    CustomizingPreviews()
//        .previewLayout(.fixed(width: 300, height: 79))
//        .previewDisplayName("Custom Preview")
//        .environment(\.colorScheme, .dark)
        .previewDevice("iPhone 15")
}
