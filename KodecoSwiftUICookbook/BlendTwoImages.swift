//
//  BlendTwoImages.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/6/24.
//

import SwiftUI

struct BlendTwoImages: View {
    var body: some View {
        ZStack {
            Image("SunriseTent")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            Image("WavyPattern")
                .resizable()
                .scaledToFill()
                .blendMode(.multiply)
                .opacity(0.7)
        }    }
}

#Preview {
    BlendTwoImages()
}
