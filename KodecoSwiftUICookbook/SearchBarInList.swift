//
//  SearchBarInList.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/10/24.
//

import SwiftUI


struct Park2: Identifiable {
    let id = UUID()
    let name: String
}

struct SearchBarInList: View {
    @State private var searchText = ""
    
    let parks: [Park2] = [
    Park2(name: "Yosemite National Park"),
         Park2(name: "Redwood National and State Park"),
          Park2(name: "Sequoia National Park"),
          Park2(name: "Pinnacle National Park"),
    Park2(name: "Joshua Tree National Park"),
    Park2(name: "Death Valley National Park")
    ]
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(parks.filter { searchText.isEmpty || $0.name.localizedCaseInsensitiveContains(searchText)}) { park in
                    Text(park.name)
                }
            }
            .navigationTitle("California Parks")
            .searchable(text: $searchText)
        }
    }
}

#Preview {
    SearchBarInList()
}
