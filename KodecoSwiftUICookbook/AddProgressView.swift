//
//  AddProgressView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/12/24.
//

import SwiftUI

struct AddProgressView: View {
    @State private var progressValue = 0.0 // Initial value of progress view
    
    var body: some View {
        VStack {
            ProgressView(value: progressValue)
                .padding()
            
            Button("Start Downloading") {
                // Simulate the download  progress
                for i in 1...100 {
                    DispatchQueue.main.asyncAfter(deadline: .now() + Double(i) / 10) {
                        progressValue = Double(i) / 100.0
                    }
                }
            }
        }
    }
}

#Preview {
    AddProgressView()
}
