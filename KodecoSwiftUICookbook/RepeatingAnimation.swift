//
//  RepeatingAnimation.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/20/24.
//

import SwiftUI

struct RepeatingAnimation: View {
    @State private var isAnimating = false
    
    var body: some View {
    Circle()
            .fill(.blue)
            .frame(width: 50, height: 50)
            .scaleEffect(isAnimating ? 1.5 : 1)
            .animation(
                isAnimating ? .easeInOut(duration: 1).repeatForever(autoreverses: true) : .default, value: isAnimating
            )
            .onAppear {
                isAnimating = true
            }
    }
}

#Preview {
    RepeatingAnimation()
}
