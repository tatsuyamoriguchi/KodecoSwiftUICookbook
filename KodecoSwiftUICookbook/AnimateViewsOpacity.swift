//
//  AnimateViewsOpacity.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/18/24.
//

import SwiftUI

struct AnimateViewsOpacity: View {
    @State private var opacity: Double = 0.0
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .opacity(opacity)
                .font(.largeTitle)
                .padding()
            
            Button(opacity == 0.0 ? "Fade In" : "Fade Out") {
                withAnimation(.easeInOut(duration: 2)) {
                    opacity = opacity == 0.0 ? 1.0 : 0.0
//                    if opacity == 0.0 {
//                        opacity = 1.0
//                    } else {
//                        opacity = 0.0
//                    }
                }
            }
        }
    }
}

#Preview {
    AnimateViewsOpacity()
}
