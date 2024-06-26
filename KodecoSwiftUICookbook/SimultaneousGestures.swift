//
//  SimultaneousGestures.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/25/24.
//

import SwiftUI

struct SimultaneousGestures: View {
    @GestureState private var rotationAngle = Angle.zero
    @GestureState private var zoomScale = CGFloat(1.0)
    
    var body: some View {
        
        let rotationGesture = RotationGesture()
              .updating($rotationAngle) { value, state, _ in
                state = value
              }
        
        let magnficationGesture = MagnificationGesture()
            .updating($zoomScale) { value, state, _ in
                state = value
            }
        
        let combinedGesture = rotationGesture.simultaneously(with: magnficationGesture)
        
        return Image(systemName: "sun.max.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 200)
            .rotationEffect(rotationAngle)
            .scaleEffect(zoomScale)
            .gesture(combinedGesture)
            .foregroundStyle(Color.yellow)
        

    }
}

#Preview {
    SimultaneousGestures()
}
