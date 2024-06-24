//
//  GesturePriority.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/24/24.
//

import SwiftUI

struct GesturePriority: View {
    @State private var position = CGSize.zero
    
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 100))
            .foregroundColor(.red)
            .padding()
            .offset(position)
            .gesture(
                DragGesture()
                    .onChanged { gesture in
                        self.position = gesture.translation
                    }
                
                    .onEnded { _ in
                        print("Drag ended")
                    }
                    .simultaneously(with: TapGesture()
                        .onEnded { _ in
                            print("Inside Tapped")
                        }
                    )
            )
            .highPriorityGesture(
                TapGesture()
                    .onEnded { _ in
                        print("Tapped")
                    }
            )
    }
}

#Preview {
    GesturePriority()
}
