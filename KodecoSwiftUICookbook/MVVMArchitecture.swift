//
//  MVVMArchitecture.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 8/2/24.
//

import SwiftUI

// Model
struct Plant: Identifiable {
    let id = UUID()
    var name: String
    var wateringFrequency: Int // days between watering
    var lastWaterdDate: Date?
}

// ViewModel
class PlantCollectionViewModel: ObservableObject {
    @Published var plants: [Plant] = []
    
    func addPlant(_ plant: Plant) {
        plants.append(plant)
    }
    
    func removePlant(_ plant: Plant) {
        plants.removeAll { $0.id == plant.id }
    }
    
    func updateWatering(for plant: Plant) {
        if let index = plants.firstIndex(where: { $0.id == plant.id }) {
            plants[index].lastWaterdDate = Date()
        }
    }
}

// View
struct MVVMArchitecture: View {
    // ViewModel Binding: Utilizes PlantCollectionViewModel for underlying logic and data.
    @ObservedObject var viewModel = PlantCollectionViewModel()
    
    // State Variables: Manages UI state for adding plants (showingAddPlant, plantNameInput, plantWaterFrequencyInput).
    @State private var showingAddPlant = false
    @State private var plantNameInput = ""
    @State private var plantWaterFrequencyInput = 1
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.plants) { plant in
                    HStack {
                        Text(plant.name)
                        Spacer()
                        Text("Water every \(plant.wateringFrequency) days")
                        Button(action: { viewModel.updateWatering(for: plant)}) {
                            Image(systemName: "drop.fill")
                        }
                    }
                }
                .onDelete(perform: deletePlant)
            }
            .navigationTitle("My Plants")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showingAddPlant.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .alert("Add Plant", isPresented: $showingAddPlant) {
                TextField("Plant Name", text: $plantNameInput)
                TextField("Water Frequenty", value: $plantWaterFrequencyInput, formatter: NumberFormatter())
                Button("OK", action: addPlant)
                Button("Cancel", role: .cancel, action: clearInputs)

            }
        }
    }
    
    private func deletePlant(at offsets: IndexSet) {
        offsets.forEach { viewModel.removePlant(viewModel.plants[$0])
        }
    }
    
    private func addPlant() {
        viewModel.addPlant(Plant(name: plantNameInput, wateringFrequency: plantWaterFrequencyInput))
        
        clearInputs()
    }
    
    private func clearInputs() {
        plantNameInput = ""
        plantWaterFrequencyInput = 1
    }
}

#Preview {
    MVVMArchitecture()
}
