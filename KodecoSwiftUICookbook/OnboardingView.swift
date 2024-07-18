//
//  OnboardingView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/18/24.
//

import SwiftUI

struct OnboardingView: View {
    let title: String
    let image: String
    let description: String
    
    var body: some View {
        VStack {
            Image(systemName: image)
                .font(.largeTitle)
                .padding()
            Text(title)
                .font(.headline)
            Text(description)
                .multilineTextAlignment(.center)
                .padding()
            
        }
    }
}

#Preview {
    OnboardingView(title: "Fun Fact", image: "paperplane.fill", description: "Space travel isn't for the fain-hearted.")
}

