//
//  ImplicitExplicitAnimationFromChatGPT.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 8/9/24.
//

import SwiftUI

struct ImplicitExplicitAnimationFromChatGPT: View {
    @State private var isExpanded = false
    @State private var colorChange = false
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(colorChange ? Color.blue : Color.green)
                .frame(width: isExpanded ? 200 : 100, height: isExpanded ? 200 : 100)
                .animation(.easeInOut, value: colorChange) // Implicit animation on colorChange
            
            Button("Toggle Size") {
                withAnimation(.linear(duration: 2.0)) {
                    isExpanded.toggle() // Explicit animation on size
                }
            }
            
            Button("Toggle Color") {
                colorChange.toggle()
            }
        }
    }
}


#Preview {
    ImplicitExplicitAnimationFromChatGPT()
}
