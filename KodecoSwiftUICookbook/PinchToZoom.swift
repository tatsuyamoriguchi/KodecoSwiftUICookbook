//
//  PinchToZoom.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/23/24.
//

import SwiftUI

struct PinchToZoom: View {
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        Image(systemName: "star.circle.fill")
            .resizable()
            .scaledToFit()
            .scaleEffect(scale)
            .gesture(
                MagnificationGesture()
                    .onChanged({ value in
                        self.scale = value.magnitude
                    })
                )
    }
}

#Preview {
    PinchToZoom()
}
