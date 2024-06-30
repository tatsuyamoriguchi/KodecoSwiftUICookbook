//
//  ConfigureModalViewHeight.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/30/24.
//

import SwiftUI

struct ConfigureModalViewHeight: View {
    @State private var showModal = false
    
    var body: some View {
        Button("Show Modal") {
            showModal = true
        }
        .sheet(isPresented: $showModal, content: {
            Text("Hello")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.blue.opacity(0.2))
                .presentationDetents([.large, .medium])
                .presentationContentInteraction(.resizes)
                .presentationDragIndicator(.automatic)
        })
    }
}

#Preview {
    ConfigureModalViewHeight()
}
