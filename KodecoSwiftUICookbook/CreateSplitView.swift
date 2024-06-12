//
//  CreateSplitView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/12/24.
//

import SwiftUI

struct Animal: Hashable {
    let name: String
    let description: String
}

struct CreateSplitView: View {
    let animals = [
        Animal(name: "Coyote", description: "The coyote is a specie of canine native to North America."),
        Animal(name: "Gila Monster", description: "The Gila Monster is a specie of venomous lizard native to the southwestern United States."),
        Animal(name: "Roadrunner", description: "The Roadrunner is the fast-running bird found in the southwestern United States and Mexico.")
    ]
    
    @State private var selectedAnimal: Animal? = nil
    
    var body: some View {
        NavigationSplitView {
            List(animals, id: \.name, selection: $selectedAnimal) { animal in
                NavigationLink(animal.name, value: animal)
            }
            .navigationTitle("Arizona Animal")
        } detail: {
            AnimalDetailView(animal: selectedAnimal ?? animals[0])
        }
    }
}

struct AnimalDetailView: View {
    let animal: Animal
    
    var body: some View {
        VStack {
            Text(animal.name)
                .font(.largeTitle)
            Text(animal.description)
                .font(.body)
        }
        .padding()
        .navigationTitle("Animal Details")
    }
}

#Preview {
    CreateSplitView()
}
