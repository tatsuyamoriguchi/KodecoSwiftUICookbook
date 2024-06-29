//
//  CreateModalView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/29/24.
//

import SwiftUI

struct CreateModalView: View {
    @State private var showModal = false
    
    var body: some View {
        Button("Show Modal") {
            showModal = true
        }
        .sheet(isPresented: $showModal, content: {
            Text("This is a modal view.")
        })
    }
}

#Preview {
    CreateModalView()
}
