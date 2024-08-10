//
//  SeparatingViewLogic.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 8/9/24.
//

import SwiftUI

struct SeparatingViewLogic: View {
    @State private var title = "Hello, World!"
    
    var body: some View {
        VStack {
            Text(title)
            Button(action: {
                title = "Button was tapped."
            }) {
                Text("Tap me")
            }
        }
    }
}


#Preview {
    SeparatingViewLogic()
}
