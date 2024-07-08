//
//  ImagesAccessibleWithDescriptions.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/8/24.
//

import SwiftUI

struct ImagesAccessibleWithDescriptions: View {
    var body: some View {
        Image(systemName: "photo")
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
            .accessibilityLabel(Text("Mountain Landscape"))
            .accessibilityHint(Text("A beautiful mountain landscape with serene waterfall"))
    }
}

#Preview {
    ImagesAccessibleWithDescriptions()
}
