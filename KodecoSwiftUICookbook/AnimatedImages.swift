//
//  AnimatedImages.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/6/24.
//

import SwiftUI

struct AnimatedImages: View {
    @State private var isAnimating = false
    var body: some View {
        Image("HelloHedgy")
            .resizable()
            .scaledToFit()
            .scaleEffect(isAnimating ? 1.5 : 1.0)
            .rotationEffect(.radians(60.0))
            .onAppear() {
                withAnimation(.easeInOut(duration: 1.0)
                    .repeatCount(4, autoreverses: true)) {
//                    .repeatForever(autoreverses: true)) {
                    isAnimating = true
                
                }
            }
    }
}

#Preview {
    AnimatedImages()
}
