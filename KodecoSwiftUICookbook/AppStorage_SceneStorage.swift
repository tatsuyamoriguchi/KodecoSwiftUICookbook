//
//  AppStorage_SceneStorage.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/23/24.
//

import SwiftUI

struct AppStorage_SceneStorage: View {
    @AppStorage("username") var username: String = "Anonymoud"
    @SceneStorage("selectedTab") var selectedTab: String?
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Tab 1")
                .tabItem { Label("Tab 1", systemImage: "1.circle")
                }
                .tag("Tab 1")
            Text("Tab 2")
                .tabItem {
                    Label("Tab 2", systemImage: "2.circle")
                }
                .tag("Tag 2")
            ButtonView()
                .tabItem {
                    Label("Tag 3", systemImage: "3.circle")
                }
                .tag("Tag 3")
        }
    }
}

struct ButtonView: View {
    @AppStorage("username") var username: String = "Anonymous"
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome, \(username)")
            Spacer()
            Button("Log in") {
                username = "Sigabrt"
            }
            Spacer()
            Button("Log out") {
                username = "Anonymous"
            }
            Spacer()
        }

    }
}

#Preview {
    AppStorage_SceneStorage()
}
