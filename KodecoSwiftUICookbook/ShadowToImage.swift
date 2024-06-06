//
//  ShadowToImage.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/5/24.
//

import SwiftUI

struct ShadowToImage: View {
    var body: some View {
        Image("CoolCat")
        // The modifier order matters. resizable() first
            .resizable()
            .shadow(color: .mint, radius: 20, x:10, y:20)
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
    }
}

#Preview {
    ShadowToImage()
}
