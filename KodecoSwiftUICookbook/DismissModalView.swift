//
//  DismissModalView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/29/24.
//

import SwiftUI

struct ModalView1: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("This is a modal view.")
            Button("Dismiss") {
                dismiss()
            }
        }
    }
}

struct DismissModalView: View {
    @State private var isShowingModal = false
    
    var body: some View {
        Button("Show Modal") {
            isShowingModal = true
        }
        .sheet(isPresented: $isShowingModal, content: {
            ModalView1()
        })
    }
}
#Preview {
    DismissModalView()
}
