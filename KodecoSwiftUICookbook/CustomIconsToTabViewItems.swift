//
//  CustomIconsToTabViewItems.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/12/24.
//

import SwiftUI

struct CustomIconsToTabViewItems: View {
    var body: some View {
        TabView {
            Text("Here come the sun.")
                .tabItem { Image("HappySun")
                    Text("Sun")
                }
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color.red, for: .tabBar)
            Text("I see a good moon rising.")
                .tabItem { Image("HappyMoon")
                    Text("Moon")
                }
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color.yellow, for: .tabBar)
        }
    }
}

#Preview {
    CustomIconsToTabViewItems()
}
