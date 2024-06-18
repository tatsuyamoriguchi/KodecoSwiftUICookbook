//
//  DeclareAnimation.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/18/24.
//

import SwiftUI

struct DeclareAnimation: View {
    @State private var isAnimated = false
    
    var body: some View {

        RoundedRectangle(cornerRadius: 20)
            .fill(.cyan)
            .frame(width: isAnimated ? 200 : 100, height: 100)
            .animation(.linear(duration: 1), value: isAnimated) .onTapGesture {
                isAnimated.toggle()
            }
    }
}

#Preview {
    DeclareAnimation()
}
