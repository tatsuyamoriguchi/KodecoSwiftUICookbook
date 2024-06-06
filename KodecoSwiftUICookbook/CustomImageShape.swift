//
//  CustomImageShape.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/4/24.
//

import SwiftUI

struct StarShape: Shape {
    let points: Int
    let smoothness: CGFloat
    
    func path(in rect: CGRect) -> Path {
        assert(points >= 2, "A star must have at least 2 points.")
        
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
        let outerRadius = min(rect.width, rect.height) / 2
        let innerRadius = outerRadius * smoothness
        
        let path = Path { path in
            let angleIncrement = .pi * 2 / CGFloat(points)
            let rotationOffset = CGFloat.pi / 2
            
            for point in 0..<points {
                let angle = angleIncrement * CGFloat(point) - rotationOffset
                let tippledAngle = angle + angleIncrement / 2
                
                let outerPoint = CGPoint(x: center.x + cos(angle) * outerRadius, y: center.y + sin(angle) * outerRadius)
                let innerPoint = CGPoint(x: center.x + cos(tippledAngle) * innerRadius, y: center.y + sin(tippledAngle) * innerRadius)
                
                if point == 0 {
                    path.move(to: outerPoint)
                } else {
                    path.addLine(to: outerPoint)
                }
                
                path.addLine(to: innerPoint)
            }
            path.closeSubpath()
        }
        return path
        
    }
}
struct CustomImageShape: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Image("TwoCapybaras")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(StarShape(points: 5, smoothness: 0.4))
     
    }
}

#Preview {
    CustomImageShape()
}
