//
//  SpinningActivityIndicator.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/14/24.
//

import SwiftUI

struct SpinningActivityIndicator: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .blue))
            .scaleEffect(2.0, anchor: .center)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    // Simulates a delay in content loading.
                    // Perform transition to the next view here.
                }
            }
    }
}

#Preview {
    SpinningActivityIndicator()
}
