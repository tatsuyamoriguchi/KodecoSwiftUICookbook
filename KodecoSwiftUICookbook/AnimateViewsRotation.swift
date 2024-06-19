//
//  AnimateViewsRotation.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/19/24.
//

import SwiftUI

struct AnimateViewsRotation: View {
    @State private var rotate = false
    
    var body: some View {
        VStack {
            Button(action: {
                rotate.toggle()
            }) {
                Text("Rotate")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(10)
                
            }
            .rotation3DEffect(
                .degrees(rotate ? 100 : 0), axis: (x: 0, y: 1, z: 0))
            .animation(.easeInOut(duration: 0.5), value: rotate)
            
        }
    }
}

#Preview {
    AnimateViewsRotation()
}
