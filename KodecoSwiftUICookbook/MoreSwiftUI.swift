//
//  MoreSwiftUI.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/16/24.
//

import SwiftUI

struct MoreSwiftUI: View {
    var body: some View {
        
        VStack(spacing: 20) {
            Text("Hello, ClipShape!")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .opacity(0.7)

            Text("Circle")
                .frame(width: 200, height: 100)
                .font(.title)
                .padding()
                .background(.orange)
                .foregroundColor(.white)
                .clipShape(Circle())

            Text("This is another Circle for test. Hello")
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
//                .padding(20)
                .foregroundColor(.white)
                .background(Circle()
                    .fill(Color.indigo)
                    .frame(width: 100, height: 100)
                )

            Text("Ellipse")
                .frame(width: 200, height: 100)
                .font(.title)
                .padding()
                .background(.green)
                .foregroundColor(.white)
                .clipShape(Ellipse())
            
            Text("Capsule")
                .frame(width: 200, height: 100)
                .font(.title)
                .padding()
                .background(.purple)
                .foregroundColor(.white)
                .clipShape(Capsule())
            
            Text("Triangle")
                .frame(width: 200, height: 100)
                .font(.title)
                .padding()
                .background(.yellow)
                .foregroundColor(.black)
                .clipShape(TriangleShape())
        }
    }
}

struct TriangleShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}


#Preview {
    MoreSwiftUI()
}
