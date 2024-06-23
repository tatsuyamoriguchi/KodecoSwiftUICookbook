//
//  RotatingViewsWithGestures.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/23/24.
//

import SwiftUI

struct RotatingViewsWithGestures: View {
    @State private var angle: Angle = .degrees(0)
    
    var body: some View {
    
        Rectangle()
            .fill(Color.blue)
            .frame(width: 100, height: 100)
            .rotationEffect(angle)
            .gesture(RotationGesture()
                .onChanged { angle in
                    self.angle = angle
                }
            )
        
    }
}

#Preview {
    RotatingViewsWithGestures()
}
