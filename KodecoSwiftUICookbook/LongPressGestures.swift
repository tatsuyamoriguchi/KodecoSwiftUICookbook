//
//  LongPressGestures.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/22/24.
//

import SwiftUI

struct LongPressGestures: View {
    var body: some View {
        Text("Tap and Hold Me.")
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .onLongPressGesture(minimumDuration: 1) {
                print("Long press detected")
            }
    }
}

#Preview {
    LongPressGestures()
}
