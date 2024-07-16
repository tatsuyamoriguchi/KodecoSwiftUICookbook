//
//  SwiftUIPreviews.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/16/24.
//

import SwiftUI

struct SwiftUIPreviews: View {
    var message: String = "Hello, World!"
    var body: some View {
        Text(message)
    }
}

struct SwiftUIPreviews_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPreviews(message: "Hello, World!")
            .previewDisplayName("Saying hi")
        SwiftUIPreviews(message: "Goodby, World!")
            .previewDisplayName("Saying bye")
    }
}
