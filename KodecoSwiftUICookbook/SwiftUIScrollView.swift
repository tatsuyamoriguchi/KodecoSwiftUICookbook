//
//  SwiftUIScrollView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/16/24.
//

import SwiftUI

struct SwiftUIScrollView: View {
    var body: some View {
        VStack {
            //Vertical Scroll View
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 20) {
                    ForEach(1...20, id: \.self) { index in
                        Text("Row: \(index)")
                            .font(.title)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            Divider()
            
            // Horizontal ScrollView
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(1...20, id: \.self) { index in
                        Text("Item: \(index)")
                            .font(.title)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    SwiftUIScrollView()
}
