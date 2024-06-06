//
//  CropImage.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/2/24.
//

import SwiftUI

struct CropImage: View {
    var body: some View {
        Text("Cropping with Clipped")
            .font(.title)
        Image("WinterPup")
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .clipped()
            .border(.black, width: 2)
    }
}

#Preview {
    CropImage()
}
