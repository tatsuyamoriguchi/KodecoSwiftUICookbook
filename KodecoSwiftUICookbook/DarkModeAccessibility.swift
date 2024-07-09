//
//  DarkModeAccessibility.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/9/24.
//

import SwiftUI

struct DarkModeAccessibility: View {
//    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Button("Hello, SwiftUI") {
            // do something
        }
        .padding()
//        .foregroundColor(colorScheme == .dark ? .white : .black)
//        .background(colorScheme == .dark ? .blue : .red)
        .cornerRadius(20)
        .background(.black)
        .preferredColorScheme(.dark)
        .foregroundColor(.white)
    }
}

#Preview {
    DarkModeAccessibility()
}
