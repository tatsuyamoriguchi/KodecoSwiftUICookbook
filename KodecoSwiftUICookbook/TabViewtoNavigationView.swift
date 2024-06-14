//
//  TabViewtoNavigationView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/13/24.
//

import SwiftUI

struct TabViewtoNavigationView: View {
    var body: some View {
        NavigationStack {
            TabView {
                Text("First Tab")
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                Text("Second Tab")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
            }
            .navigationTitle("My App")
        }
    }
}

#Preview {
    TabViewtoNavigationView()
}
