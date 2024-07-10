//
//  ControlActivationPointsForAccessibility.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/10/24.
//

import SwiftUI

struct ControlActivationPointsForAccessibility: View {
    @State private var isExpanded = false
    
    var body: some View {
        VStack {
            Image(systemName: "sun.max.fill")
                .resizable()
                .frame(width: isExpanded ? 200 : 100, height: isExpanded ? 200 : 100)
                .onTapGesture {
                    withAnimation {
                        isExpanded.toggle()
                    }
                }
                .accessibilityActivationPoint(CGPoint(x: 100, y: 100))
        }
    }
}

#Preview {
    ControlActivationPointsForAccessibility()
}
