//
//  ToggleButton.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/8/24.
//

import SwiftUI

struct ToggleButton: View {
    @State private var isOn = false
    @State private var hello = true
    
    var body: some View {
        Toggle(isOn: $isOn) {
            Text("Switch the state.")
            
        }
        .toggleStyle(.automatic)
        .padding()
    }
}

#Preview {
    ToggleButton()
}
