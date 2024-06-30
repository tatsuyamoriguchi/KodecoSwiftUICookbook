//
//  ListToModal.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/30/24.
//

import SwiftUI

struct ListToModal: View {
    @State private var showModal = false
    
    var body: some View {
        Button("Show Modal") {
            showModal = true
        }
        .sheet(isPresented: $showModal) {
            VStack {
                List(0..<50) { item in
                Text("Item: \(item)")
                }
            }
            .presentationDetents([.medium, .large])
            .presentationContentInteraction(.scrolls)
        }
    }
}

#Preview {
    ListToModal()
}
