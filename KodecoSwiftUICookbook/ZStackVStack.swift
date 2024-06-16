//
//  ZStackVStack.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/16/24.
//

import SwiftUI

struct ZStackVStack: View {
    var body: some View {
        ZStack {
            VStack {
                Text("Top")
                    .padding()
                    .background(Color.green)
                Spacer()
                    .frame(height: 20)
                Text("Middle")
                    .padding()
                    .background(Color.yellow)
                Spacer()
                    .frame(height: 20)
                Text("Bottom")
                    .padding()
                    .background(Color.red)
            }
            
            Image(systemName: "sun.max.fill")
                .resizable()
                .frame(width:100, height: 100)
                .foregroundColor(.orange)
        }
    }
}

#Preview {
    ZStackVStack()
}
