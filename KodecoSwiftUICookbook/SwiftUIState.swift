//
//  SwiftUIState.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/19/24.
//

import SwiftUI

struct SwiftUIState: View {
    @State private var isSwitchedOn = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isSwitchedOn) {
                Text("Turn me on or off")
            }
            if isSwitchedOn {
                Text("The switch is on.")
            }
        }
        .padding()
    }
}

#Preview {
    SwiftUIState()
}
