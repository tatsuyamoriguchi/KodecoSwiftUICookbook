//
//  ViewValuesForAccessibility.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/8/24.
//

import SwiftUI

struct ViewValuesForAccessibility: View {
    @State private var volumeLevel: Double = 50
    
    var body: some View {
        VStack {
            Slider(value: $volumeLevel, in: 0...100, step: 1)
                .padding()
                .accessibilityLabel(Text("Volume"))
                .accessibilityValue(Text("\(Int(volumeLevel)) percent"))
            Text("Volume: \(Int(volumeLevel))%")
        }
        .padding()
    }
}

#Preview {
    ViewValuesForAccessibility()
}
