//
//  SwitchTabsProgrammatically.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/13/24.
//

import SwiftUI

struct SwitchTabsProgrammatically: View {
    
    @State private var selectedTab: Int = 0
    
    var body: some View {
        VStack {
            Button("Switch to second tab") {
                selectedTab = 1
            }
            .padding()
            
            TabView(selection: $selectedTab)  {
                Text("Tab Content 1").tabItem {
                    Image(systemName: "1.circle")
                    /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/
                }
                .tag(0)
                
                Text("Tab Content 2").tabItem {
                    Image(systemName: "2.circle")
                    /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/
                }
                .tag(1)
            }
        }
    }
}

#Preview {
    SwitchTabsProgrammatically()
}
