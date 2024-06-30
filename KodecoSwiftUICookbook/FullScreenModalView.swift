//
//  FullScreenModalView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/29/24.
//

import SwiftUI


struct FullScreenModalView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("This is a full-screen modal view.")
            Button("Dismiss") {
                dismiss()
            }
            .foregroundStyle(Color.orange)
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MainView: View {
    @State private var isShowingModal = false
    
    var body: some View {
        Button("Show Modal") {
            isShowingModal = true
        }
        .fullScreenCover(isPresented: $isShowingModal, content: {
            FullScreenModalView()
        })
    }
}

#Preview {
    MainView()
}
