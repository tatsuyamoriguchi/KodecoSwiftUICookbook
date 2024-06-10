//
//  ImageToButton.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/8/24.
//

import SwiftUI

struct ImageToButton: View {
    var body: some View {
        Button(action: {
            // Action to perform when the button is pressed.
            print("Hey")
        }) {
            Image("TwoCapybaras")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
        }
    }
}

#Preview {
    ImageToButton()
}
