//
//  MaintainingState.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 8/10/24.
//

import SwiftUI

struct MaintainingState: View {
    @State private var counter = 0 // Declare a private @State property
    
    var body: some View {
        VStack {
            Text("Counter: \(counter)")
            Button("Increment") {
                counter += 1 // Increment couter when the button is tapped.
            }
        }
    }
}

#Preview {
    MaintainingState()
}
