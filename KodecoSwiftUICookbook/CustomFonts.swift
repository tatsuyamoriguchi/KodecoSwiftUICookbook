//
//  CustomFonts.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/30/24.
//

import SwiftUI

struct CustomFonts: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
        Text("Hello, World!")
            .font(.custom("RussoOne-Regular",size: 36))
    }
}

#Preview {
    CustomFonts()
}
