//
//  LocalizeImages.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/14/24.
//

import SwiftUI

struct LocalizeImages: View {
    var body: some View {
        Image("fruit")
             .resizable()
             .scaledToFit()
    }
}

#Preview {
    LocalizeImages()
}
