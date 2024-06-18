//
//  AnimateViewsPosition.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/18/24.
//

import SwiftUI

struct AnimateViewsPosition: View {
    @State private var offset = CGSize(width: 0, height: 0)
    
    var body: some View {
        Image(systemName: "arrow.up")
            .font(.largeTitle)
            .offset(offset)
            .animation(.spring(), value: offset)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        offset = value.translation
                    }
                    .onEnded { _ in
                        withAnimation {
                            offset = .zero
                        }
                    }
            )
    }
                         
}

#Preview {
    AnimateViewsPosition()
}
