//
//  CustomAccessibilityContent.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/9/24.
//

import SwiftUI

struct CustomAccessibilityContent: View {
    var body: some View {
        VStack {
            Image("yosemite")
                .resizable()
                .scaledToFit()
                .accessibilityLabel(Text("Landscape Photo"))
//                .accessibilityCustomContent("detail", "A serene landscape photo showing a green meadow under a clear blue sky", importance: .high)
                .accessibilityCustomContent(
                          "detail",
                          "A serene landscape photo showing a green meadow under a clear blue sky",
                          importance: .high
                        )
            
        }
        .padding()
    }
}

#Preview {
    CustomAccessibilityContent()
}
