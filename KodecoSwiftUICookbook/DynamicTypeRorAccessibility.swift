//
//  DynamicTypeRorAccessibility.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/7/24.
//

import SwiftUI

struct DynamicTypeRorAccessibility: View {
    @Environment(\.sizeCategory) var sizeCategory
    
    var body: some View {
        VStack{
            if sizeCategory >= .accessibilityMedium {
                Text("You have selected a larger text size.")
                    .padding()
            } else {
                Text("The text size is set to a regular value.")
                    .padding()
            }
        }
    }
}

#Preview {
    DynamicTypeRorAccessibility()
}
