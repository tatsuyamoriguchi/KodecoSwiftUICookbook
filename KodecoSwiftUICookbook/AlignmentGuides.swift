//
//  AlignmentGuides.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/17/24.
//

import SwiftUI

struct CircleAlignment: AlignmentID {
    static func defaultValue(in context: ViewDimensions) -> CGFloat {
        return context[VerticalAlignment.center]
    }
}

extension VerticalAlignment {
    static let circleAlignment = VerticalAlignment(CircleAlignment.self)
}


struct AlignmentGuides: View {
    var body: some View {
        HStack(alignment: .circleAlignment, content: {
            ForEach(0..<5) { index in
                Circle()
                    .frame(width: 50, height: 50)
                    .alignmentGuide(.circleAlignment, computeValue: { dimension in
                        CGFloat(index * 30)
                    })
            }
        })
        
    }
}

#Preview {
    AlignmentGuides()
}
