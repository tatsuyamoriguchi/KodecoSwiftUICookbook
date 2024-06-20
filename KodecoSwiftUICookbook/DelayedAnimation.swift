//
//  DelayedAnimation.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/20/24.
//

import SwiftUI

struct DelayedAnimation: View {
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            Button("Animate") {
                withAnimation(.easeInOut(duration: 2).delay(1)) {
                    isAnimating.toggle()
                }
            }
            .padding()
            RoundedRectangle(cornerRadius: isAnimating ? 50 : 10)
                .foregroundColor(.blue)
                .frame(width: isAnimating ? 300 : 100, height: isAnimating ? 300 : 100)
                .animation(.easeInOut(duration: 2), value: isAnimating)
        }
    }
}

#Preview {
    DelayedAnimation()
}
