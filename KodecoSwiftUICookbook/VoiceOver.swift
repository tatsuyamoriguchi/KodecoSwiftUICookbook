//
//  VoiceOver.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/7/24.
//

import SwiftUI

struct VoiceOver: View {
    var body: some View {
        VStack {
            Button(action: {}, label: {
                Text("Tap Me")
            })
        }
        .accessibilityLabel(Text("Press the button to execute an action."))
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    VoiceOver()
}
