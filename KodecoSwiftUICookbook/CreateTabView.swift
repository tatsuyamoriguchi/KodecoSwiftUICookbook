//
//  CreateTabView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/12/24.
//

import SwiftUI

struct CreateTabView: View {
    var body: some View {
        TabView {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .tabItem {
                    Image(systemName: "star")
                    Text("Tab 1")
                }.tag(1)
            Text("Show the love for Tab 2")
                .tabItem {
                    Image(systemName: "heart")
                    Text("Tab 2")
                }.tag(2)
     
        }
    }
}

#Preview {
    CreateTabView()
}
