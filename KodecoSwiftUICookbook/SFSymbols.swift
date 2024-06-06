//
//  SFSymbols.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/3/24.
//

import SwiftUI

struct SFSymbols: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "pawprint.circle.fill")
                .font(.largeTitle)
                .foregroundColor(.blue)
            Image(systemName: "bell")
            Image(systemName: "bell")
                .symbolVariant(.slash)
            Image(systemName: "bell")
                .symbolVariant(.square)
            Image(systemName: "bell")
                .symbolVariant(.fill)
            Image(systemName: "bell")
                .symbolVariant(.fill.slash)
        }
    }
}

#Preview {
    SFSymbols()
}
