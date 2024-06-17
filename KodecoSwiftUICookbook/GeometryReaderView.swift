//
//  GeometryReader.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/17/24.
//

import SwiftUI

struct GeometryReader: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ForEach(-..<10) { i in
                    Rectangle()
                        .fill(.blue)
                        .frame(width: geometry.size.width * CGFloat(i+1)/10
                        )
                }
            }
        }
    }
}

#Preview {
    GeometryReader()
}
