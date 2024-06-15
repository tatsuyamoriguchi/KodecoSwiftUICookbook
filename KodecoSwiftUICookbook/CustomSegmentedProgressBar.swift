//
//  CustomSegmentedProgressBar.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/15/24.
//

import SwiftUI

struct CustomSegmentedProgressBar: View {
    
    @State private var progressOne: CGFloat = 0
    @State private var progressTwo: CGFloat = 0
    @State private var progressThree: CGFloat = 0
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                HStack(spacing: 0) {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.green)
                        .frame(height: 10)
                        .frame(width: progressOne * geometry.size.width / 3)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue)
                        .frame(height: 10)
                        .frame(width: progressOne * geometry.size.width / 3)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.purple)
                        .frame(height: 10)
                        .frame(width: progressOne * geometry.size.width / 3)
                }
                .frame(height: 50)
            }
            Button("Start Task") {
                withAnimation(.easeInOut(duration: 2)) {
                    progressOne = 1.0
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation(.easeInOut(duration: 2)) {
                        progressTwo = 1.0
                    }
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                    withAnimation(.easeInOut(duration: 2)) {
                        progressThree = 1.0
                    }
                }
            }
            .padding()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    CustomSegmentedProgressBar()
}
