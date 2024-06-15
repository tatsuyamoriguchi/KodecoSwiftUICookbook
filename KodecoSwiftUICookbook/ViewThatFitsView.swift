//
//  ViewThatFitsView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/15/24.
//

import SwiftUI

struct ViewThatFitsView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MonnPhaseView: View {
    var phase: String
    var image: Image
    
    var body: some View {
        
        ViewThatFits {
            HStack {
                image
                    .resizable()
                    .scaledToFit()
                Text(phase)
            }
            image
                .resizable()
                .scaledToFit()
        }
        
        .padding()
    
    }
}

#Preview {
    ViewThatFitsView()
}
