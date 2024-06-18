//
//  PaddingSpacing.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/17/24.
//

import SwiftUI

struct PaddingSpacing: View {
    var body: some View {
        VStack(spacing: 20) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .padding(.bottom, 20)
            HStack(spacing: 15) {
                Image(systemName: "hare.fill")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    .background(Color.orange.opacity(0.2))
                    .clipShape(Circle())
                Image(systemName: "tortoise.fill")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    .background(Color.orange.opacity(0.2))
                    .clipShape(Circle())
            }
            
            Text("It's not about speed, it's about comfort!")
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(Color.orange.opacity(0.2))
                .cornerRadius(10)
        }
        .padding()
    }
}

#Preview {
    PaddingSpacing()
}
