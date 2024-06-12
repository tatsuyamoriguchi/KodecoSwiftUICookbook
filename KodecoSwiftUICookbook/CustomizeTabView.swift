//
//  CustomizeTabView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/12/24.
//

import SwiftUI

struct CustomizeTabView: View {
    var body: some View {
        TabView {
            Text("First Tab")
                .tabItem { Image(systemName: "1.square.fill")
                    Text("First")
                }
                .tag(1)
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color.red.opacity(0.5), for: .tabBar)
            
            Text("Second Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
               }
                .tag(2)
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color.orange.opacity(0.8), for: .tabBar)
            Text("Third Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third Tab")
                }
                .tag(3)
        }
    }
}

#Preview {
    CustomizeTabView()
}
