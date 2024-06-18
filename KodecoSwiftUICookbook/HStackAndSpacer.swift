//
//  HStackAndSpacer.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/17/24.
//

import SwiftUI

struct HStackAndSpacer: View {
    var body: some View {
        HStack {
            Image(systemName: "ant.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
            Text("Cute Ant")
                .font(.title)
                .padding(.leading, 10)

            Spacer()

            Image(systemName: "ladybug")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
            Text("Cheerful Ladybug")
                .font(.title)
                .padding(.leading, 10)
        }
        .padding()
    }
    
}

#Preview {
    HStackAndSpacer()
}
