//
//  GroupOfButtons.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/9/24.
//

import SwiftUI

struct GroupOfButtons: View {
    var body: some View {
        VStack {
            HStack {
                Button("Red", action: {} )
                    .foregroundColor(.red)
                Button("Green", action: {} )
                    .foregroundColor(.green)
                Button("Blue", action: {} )
                    .foregroundColor(.blue)
            }
            Divider()
            VStack {
                Button("Red", action: {} )
                    .foregroundColor(.red)
                Button("Green", action: {} )
                    .foregroundColor(.green)
                Button("Blue", action: {} )
                    .foregroundColor(.blue)

            }
        }
        Divider()
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    GroupOfButtons()
}
