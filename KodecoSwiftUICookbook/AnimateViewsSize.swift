//
//  AnimateViewsSize.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/19/24.
//

import SwiftUI

struct AnimateViewsSize: View {
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        Button(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/) {
            scale += 0.5
        }
        .scaleEffect(scale)
        .animation(.easeInOut(duration: 0.2), value: scale)
    }
}

#Preview {
    AnimateViewsSize()
}
