//
//  PresentModalViewfromTabView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/13/24.
//

import SwiftUI

struct PresentModalViewfromTabView: View {
    
    @State private var isPresented = false
    @State private var selectedTab: Int = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Tab Content 1")
                .tabItem {
                    Image(systemName: "1.circle")
                    /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/
                }.tag(1)
            
            Text("Tab Content 2")
                .tabItem {
                    Image(systemName: "2.circle")
                    /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/
                }.tag(2)
        }
        .onChange(of: selectedTab) { oldValue, newValue in
            isPresented = true
        }
        .sheet(isPresented: $isPresented, content: {
            ModalView(isPresented: self.$isPresented)
        })
    }
}

struct ModalView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        Text("This is a modal view.")
            .padding()
        Button("Dismiss") {
            isPresented = false
        }
    }
}

#Preview {
    PresentModalViewfromTabView()
}
