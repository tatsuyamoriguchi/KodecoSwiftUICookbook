//
//  CustomAccessibilityActions.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/10/24.
//

import SwiftUI

struct CustomAccessibilityActions: View {
    @State private var currentPage = 1
    
    var body: some View {
        VStack {
            Text("Page: \(currentPage)")
                .font(.largeTitle)
                .padding()
            
            HStack {
                Button {
                    currentPage = max(currentPage - 1, 1)
                } label: {
                    Image(systemName: "arrow.left")
                }
                
                Spacer()
                
                Button {
                    currentPage = min(currentPage + 1, 5)
                } label: {
                    Image(systemName: "arrow.right")
                }
            }
            .font(.largeTitle)
            .padding()
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(Text("Page Control"))
        .accessibilityValue(Text("Page \(currentPage)"))
        .accessibilityAdjustableAction { direction in
            switch direction {
            case .increment:
                currentPage = min(currentPage + 1, 5)
            case .decrement:
                currentPage = max(currentPage - 1, 1)
            @unknown default:
                break
            }
        }
            
    }
}

#Preview {
    CustomAccessibilityActions()
}
