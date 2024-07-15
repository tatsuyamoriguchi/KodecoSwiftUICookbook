//
//  DynamicTypeforMultilingualText.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/15/24.
//

import SwiftUI

struct DynamicTypeforMultilingualText: View {
    @State private var textSize: CGFloat = 16
    
    var body: some View {
        VStack(spacing: 20) {
            Slider(value: $textSize, in: 16...40, step: 1 )
                .padding()
                .labelsHidden()
            
            Text("A small black cat climbs a tall tree, looking around for prey.")
                .font(.system(size: textSize))
                .padding()
            Text("Eine kleine schwarze Katze klettert auf einen hohen Baum und sucht nach Beute")
                .font(.system(size: textSize))
                .padding()
            Spacer()
            
        }.padding()
    }
}

#Preview {
    DynamicTypeforMultilingualText()
}
