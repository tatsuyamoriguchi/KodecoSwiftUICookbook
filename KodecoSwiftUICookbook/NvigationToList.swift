//
//  NvigationToList.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/9/24.
//

import SwiftUI

struct Park: Hashable {
    let name: String
    let imageName: String
    let description: String
}

extension Park: Identifiable {
    var id: String { name }
}

struct NvigationToList: View {
    @State private var presentedParks: [Park] = []
    
    var parks: [Park] {
        [
            Park(name: "Yosemite", imageName: "yosemite", description: "Yosemite National Park"),
            Park(name: "Sequia", imageName: "sequoia", description: "Sequoia National Park"),
            Park(name: "Point Reyes", imageName: "point_reyes", description: "Point Reyes National Seashore")
        ]
    }
    
    var body: some View {
        
        NavigationStack(path: $presentedParks) {
            List(parks) { park in
                NavigationLink(park.name, value: park)
            }
            .navigationDestination(for: Park.self) { park in
                ParkDetailsView(park: park)
            }
        }
        
    }
}

struct ParkDetailsView: View {
    let park: Park
    
    var body: some View {
        VStack {
            Image(park.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            Text(park.name)
                .font(.title)
                .foregroundStyle(Color.primary)
            Text(park.description)
                .font(.body)
                .foregroundStyle(Color.secondary)

        }
        .padding()
        
    }
}

#Preview {
    NvigationToList()
}
