//
//  EnvironmentVariables.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 8/9/24.
//

import SwiftUI

struct EnvironmentVariables: View {
    @Environment(\.layoutDirection) var layoutDirection
    
    var body: some View {
        if layoutDirection == .leftToRight {
            Text("Left to Right layout")
        } else {
            Text("Right to Left layout")
        }
    }
}

#Preview {
    EnvironmentVariables()
        .environment(\.layoutDirection, .rightToLeft)
}
