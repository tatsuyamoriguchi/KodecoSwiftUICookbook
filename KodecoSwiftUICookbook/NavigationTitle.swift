//
//  NavigationTitle.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/10/24.
//

import SwiftUI

struct NavigationTitle: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Item 1", value: "Item 1 Detail View")
                NavigationLink("Item 2", value: "Item 2 Detail View")
                NavigationLink("Item 3", value: "Item 3 Detail View")
            }
            .navigationTitle("List with Navigation")
            .navigationDestination(for: String.self) { detail in
                NaviDetailView(detail: detail)
            }
        }
    }
}

struct NavigationTitle2: View {
    @State private var selectedItem = "Item 1"
    
    @State private var details = [
    "Item 1",
    "Item 2",
    "Item 3"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(details, id: \.self) { detail in
                    Button(detail) {
                        selectedItem = detail
                    }
                    .foregroundColor(.black)
                }
            }
            .navigationTitle(selectedItem)
        }
    }
}

struct NaviDetailView: View {
    let detail: String
    var body: some View {
        Text(detail)
    }
}

#Preview {
    NavigationTitle2()
}
