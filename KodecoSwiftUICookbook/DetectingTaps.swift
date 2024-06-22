//
//  DetectingTaps.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/22/24.
//

import SwiftUI

struct DetectingTaps: View {
    @State private var countdown = 10
    
    var body: some View {
    
        VStack {
            Image(systemName: "arrowtriangle.up.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundStyle(.orange.gradient)
            
            Text("\(countdown) untill launch")
                .padding()
                .font(.title)
            
        }
        .onTapGesture {
            if self.countdown > 0 {
                self.countdown -= 1
            }
        }
    }
}

#Preview {
    DetectingTaps()
}
