//
//  SprintAnimation.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/19/24.
//

import SwiftUI

struct SprintAnimation: View {
    @State private var angle: Double = 0.0
    
    var body: some View {
    Rectangle()
            .foregroundColor(.blue)
            .frame(width: 150, height: 150)
            .rotationEffect(.degrees(angle))
            .onTapGesture {
                angle += 360
            }
            .animation(.spring(response: 1.5, dampingFraction: 0.2), value: angle)
                }
}

#Preview {
    SprintAnimation()
}
