//
//  CreatePopover.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/29/24.
//

import SwiftUI

struct CreatePopover: View {
    @State private var showPopover = false
    
    var body: some View {
        Button("Show Popover") {
            showPopover.toggle()
        }
        .buttonStyle(.borderedProminent)
        .popover(isPresented: $showPopover, attachmentAnchor: .point(.topLeading), content: {
            Text("this is a Popover.")
                .padding()
                .frame(minWidth: 300, minHeight: 400)
                .background(.red)
                .presentationCompactAdaptation(.popover)
        })
    }
}

#Preview {
    CreatePopover()
}
