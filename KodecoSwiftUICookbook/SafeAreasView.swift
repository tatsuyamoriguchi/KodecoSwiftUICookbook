//
//  SafeAreasView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/17/24.
//

import SwiftUI

struct SafeAreasView: View {
    var body: some View {
        ZStack {
            Image("ocean-view")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Welcome to Beach Paradise")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.black.opacity(0.7))
                    .cornerRadius(10)
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    SafeAreasView()
}
