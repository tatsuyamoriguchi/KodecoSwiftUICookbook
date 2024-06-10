//
//  ActionToButton.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/8/24.
//

import SwiftUI

struct ActionToButton: View {
    var body: some View {
        Button("Tap Me") {
            print("Button was tapped.")
            buttonTapped()
        }
    }
    
    func buttonTapped() {
        print("Button was indeed tapped.")
    }
}

#Preview {
    ActionToButton()
}
