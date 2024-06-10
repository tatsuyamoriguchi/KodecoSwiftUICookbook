//
//  DisableButton.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/9/24.
//

import SwiftUI

struct DisableButton: View {
    @State private var isButtonDiabled = true
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                print("Button Tapped")
            }
            .disabled(isButtonDiabled)
            
            Button("\(isButtonDiabled ? "Enabled" : "Disabled") button") {
                isButtonDiabled.toggle()
            }
            .padding()
        }
    }
}

#Preview {
    DisableButton()
}
