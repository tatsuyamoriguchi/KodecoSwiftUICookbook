//
//  DeterminateProgressBar.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/15/24.
//

import SwiftUI

struct DeterminateProgressBar: View {
    
    @State private var downloadProgress = 0.0
    @State private var timer: Timer? = nil
    
    var body: some View {
        VStack {
            ProgressView("Downloading...", value: downloadProgress, total: 100)
            Button("Start Download") {
                simulateDownload()
            }
        }
    }
    
    func simulateDownload() {
        timer?.invalidate() // Cancel the previous timer if any.
        downloadProgress = 0.0 // Reset the progress.
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: { timer in
            if downloadProgress < 100 {
                downloadProgress += 10.0
            } else {
                timer.invalidate()
            }
        })
    }
}

#Preview {
    DeterminateProgressBar()
}
