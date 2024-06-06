//
//  LoadImage.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/2/24.
//

import SwiftUI

struct LoadImage: View {
    var body: some View {
        Image("HedgehogInClover")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
    }
}

#Preview {
    LoadImage()
}
