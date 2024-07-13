//
//  StringInterpolation.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/13/24.
//

import SwiftUI

struct StringInterpolation: View {
    @State private var numFiles = 64
    
    var body: some View {
        VStack {
            Text("Copying \(numFiles, specifier: "%d") files", comment: "File copy message that indicate the number of files copied by the operaiton")
        }
    }
}

#Preview {
    StringInterpolation()
}
