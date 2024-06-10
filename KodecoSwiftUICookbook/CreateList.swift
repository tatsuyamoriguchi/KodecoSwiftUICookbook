//
//  CreateList.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/9/24.
//

import SwiftUI

struct CreateList: View {
    let scientists = ["Albert Einstein", "Isaac Newton", "Marie Curie", "Charles Darwin", "Nikola Tesla"]
    
    var body: some View {
        NavigationStack {
            List(scientists, id: \.self) { scientist in
                NavigationLink(scientist, value: scientist)
            }
            .navigationDestination(for: String.self) { scientisName in
                ScientistDetailView(name: scientisName)
            }

        }
    }
}

struct ScientistDetailView: View {
    let name: String
    
    var body: some View {
        VStack {
            Text(name)
                .font(.title)
                .padding()
            Text("More details about \(name) would be presented here.")
                .font(.body)
                .foregroundStyle(Color.gray)
        }
        .navigationTitle(name)
    }
}


#Preview {
    CreateList()
}
