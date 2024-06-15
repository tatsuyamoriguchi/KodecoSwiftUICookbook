//
//  IndeterminateProgress.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/15/24.
//

import SwiftUI

struct IndeterminateProgress: View {
    var body: some View {
        IndeterminateProgressView()
    }
}

struct IndeterminateProgressView: View {
    @State private var isLoading = true
    
    var body: some View {
        
        VStack {
            ProgressView("Loading...")
                .progressViewStyle(.circular)
                .scaleEffect(2.0, anchor: .center)
        }
        .onAppear {
            startAnimating()
        }
    }
    
    func startAnimating() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            withAnimation(Animation.linear(duration: 1.5).repeatForever()) {
                isLoading = true
            }
        }
    }
}
#Preview {
    IndeterminateProgress()
}
