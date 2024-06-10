//
//  ConsistentSwiftUIDesign.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/7/24.
//

import SwiftUI

struct ConsistentSwiftUIDesign: View {
    @State private var isSelected = false
    @State private var changeColor = false
    
    var body: some View {
        Button(action: {
            isSelected.toggle()
        }) {
            Image("TransparentHedgy")
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .foregroundColor(isSelected ? .red : .gray)
        }
        
        Image("TransparentHedgy")
            .renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .foregroundColor(changeColor ? .purple : .gray)
            .onAppear() {
                withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                    changeColor.toggle()
                }
            }
    }
}

#Preview {
    ConsistentSwiftUIDesign()
}
