//
//  FramesAndAlignment.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/15/24.
//

import SwiftUI

struct FramesAndAlignment: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .frame(width: 300, height: 200, alignment: .topTrailing)
                .border(.red)
        }
    }
}

#Preview {
    FramesAndAlignment()
}
