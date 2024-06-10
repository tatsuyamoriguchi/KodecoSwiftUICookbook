//
//  FullScreenButton.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/9/24.
//

import SwiftUI

struct FullScreenButton: View {
    var body: some View {
        FullScreenButtonView()
    }
}

struct FullScreenButtonView: View {
    var body: some View {
        Button(action: {
            print("Full Screen Button Tapped")
        }, label: {
            Text("Full Screen Button")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        })
    }
    
}

#Preview {
    FullScreenButton()
}
