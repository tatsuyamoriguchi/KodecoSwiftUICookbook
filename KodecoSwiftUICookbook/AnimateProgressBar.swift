//
//  AnimateProgressBar.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/14/24.
//

import SwiftUI
import Combine

struct AnimateProgressBar: View {
    
    @State private var progress: CGFloat = 0.0
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(width:300, height: 20)
                .opacity(0.3)
                .foregroundColor(.gray)
            
            Rectangle()
                .frame(width: progress * 300, height: 20)
                .foregroundColor(.green)
                .animation(.easeInOut, value: progress)
        }
        .onReceive(timer) { _ in
            if progress < 1.0 {
                progress += 0.01
                
            }
        }
    }
}


#Preview {
    AnimateProgressBar()
}
