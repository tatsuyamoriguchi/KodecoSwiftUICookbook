//
//  CustomProgressView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/15/24.
//

import SwiftUI

struct RootCustomProgressView: View {
    @State private var progress: CGFloat = 0.5
    
    var body: some View {
        VStack {
            CustomProgressView(progress: progress)
                .frame(height: 30)
                .padding(.horizontal, 50)
            Button(action: {
                progress += 0.1
            }) {
                Text("Incrase Progress")
            }
        }
    }
    
}

struct CustomProgressView: View {
    let progress: CGFloat
    
    var body: some View {
        GeometryReader {
            geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: 20)
                    .opacity(0.3)
                    .foregroundColor(.gray)
                Rectangle()
                    .frame(
                        width: min(progress * geometry.size.width, geometry.size.width), height: 20
                    )
                    .foregroundColor(.blue)
            }
        }
    }
}

#Preview {
    RootCustomProgressView()
}
