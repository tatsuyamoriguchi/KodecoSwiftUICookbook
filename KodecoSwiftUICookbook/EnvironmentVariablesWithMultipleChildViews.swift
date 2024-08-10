//
//  EnvironmentVariablesWithMultipleChildViews.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 8/9/24.
//

import SwiftUI

struct EnvironmentVariablesWithMultipleChildViews: View {
    var body: some View {
        VStack {
            Text("This is a title in a child view with multiple lines")
                .font(.title)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
            
            Divider()
            
            VStack {
                Text("This is a title in a child view with multiple lines")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
            }
            .environment(\.layoutDirection, .rightToLeft)
        }
    }
}


#Preview {
    EnvironmentVariablesWithMultipleChildViews()
}
