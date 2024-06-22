//
//  DraggingGestures.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/22/24.
//

import SwiftUI

struct DraggingGestures: View {
    @State private var circlePosition = CGPoint(x: 100, y: 100)
    
    var body: some View {
    Circle()
            .fill(Color.blue)
            .frame(width: 100, height: 100)
            .position(circlePosition)
            .gesture(
                DragGesture(minimumDistance: 0, coordinateSpace: .local)
                    .onChanged({ gesture in
                    self.circlePosition = gesture.location
                })
            )
    }
}

#Preview {
    DraggingGestures()
}
