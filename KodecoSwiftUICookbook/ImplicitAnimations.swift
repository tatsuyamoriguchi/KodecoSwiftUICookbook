//
//  ImplicitAnimations.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 8/9/24.
//

import SwiftUI

struct ImplicitAnimations: View {
    @State private var scale = 1.0
    
    var body: some View {
    Circle()
            .fill(Color.blue)
            .frame(width: 100 * scale, height: 100 * 100)
            .scaleEffect(scale)
            .onTapGesture {
                // Explicit anumation
                withAnimation(.spring()) {
                    scale += 0.5
                }
            }
//            .animation(.spring(), value: scale) // Implicit animation
    }
}

#Preview {
    ImplicitAnimations()
}
