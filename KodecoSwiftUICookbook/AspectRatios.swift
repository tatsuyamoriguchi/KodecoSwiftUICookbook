//
//  AspectRatios.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/2/24.
//

import SwiftUI

struct AspectRatios: View {
    var body: some View {
        Image("HelloHedgy")
            .resizable()
            .aspectRatio(2, contentMode: .fit)
            
    }
}

#Preview {
    AspectRatios()
}
