//
//  CircularProgressBar.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/14/24.
//

import SwiftUI

struct CircularProgressBar: View {
    @State private var progress: CGFloat = 0.2 // Example progress value
    
    var body: some View {
        VStack {
            CircularProgressView(progress: progress)
                .frame(width: 200, height: 200)
            
            Slider(value: $progress, in: 0...1)
                .padding()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct CircularProgressView: View {
    let progress: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .opacity(0.1)
                .foregroundColor(.blue)
            
            Circle()
                .trim(from: 0.0, to: min(progress, 1.0))
                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .foregroundColor(.blue)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear, value: progress)
        }
    }
}

#Preview {
    CircularProgressBar()
}
