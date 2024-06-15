//
//  ProgresViewToNavigationBar.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/15/24.
//

import SwiftUI

struct ProgresViewToNavigationBar: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)

            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    ProgressView()
                         .progressViewStyle(CircularProgressViewStyle(tint: .red))
                }
            }
        }
    }
}

#Preview {
    ProgresViewToNavigationBar()
}
