//
//  DebuggingSwiftUIViews.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 8/10/24.
//

import SwiftUI

struct DebuggingSwiftUIViews: View {
    @State private var counter = 0
    
    var body: some View {
        Button("Tap Me") {
            counter += 1
            print("Button was tapped \(counter) times.")
            
            if counter > 10 {
                assertionFailure("Button was tapped too many times.")
            }
        }
    }
}

#Preview {
    DebuggingSwiftUIViews()
}
