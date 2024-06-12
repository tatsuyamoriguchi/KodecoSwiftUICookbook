//
//  CreateSlider.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/12/24.
//

import SwiftUI

struct CreateSlider: View {
    @State private var value: Double = 0.5
    
    var body: some View {
        VStack {
            Slider(value: $value, in: 0...1)
//            Text("Value: \(value)")
            Text("Value: \(value, specifier: "%.2f")")
        }
    }
}

#Preview {
    CreateSlider()
}
