//
//  ViewInspectorTesting.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 8/2/24.
//

import SwiftUI

struct ToDoItem: Identifiable {
    let id = UUID()
    let title: String
    var isCompleted = false
}

class ToDoListViewModel: ObservableObject {
    @Published var items: [ToDoItem] = []
    
    func addItem(_ title: String) {
        items.append(ToDoItem(title: title))
    }
    
    func toggleCompletion(for item: ToDoItem) {
        if let index = items.firstIndex(where: { $0.id == item.id}) {
            items[index].isCompleted.toggle()
        }
    }
}

struct ViewInspectorTesting: View {
    @StateObject var viewModel = ToDoListViewModel()
    
    @State private var isAlertShowing = false
    @State private var itemDescriptionInput = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.items) { item in
                    HStack {
                        Text(item.title)
                        Spacer()
                        if item.isCompleted {
                            Image(systemName: "checkmark")
                        }
                    }
                    .onTapGesture {
                        viewModel.toggleCompletion(for: item)
                    }
                }
            }
                .navigationTitle("To Do List")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: { isAlertShowing.toggle() }, label: {
                            Image(systemName: "plus")
                        })
                    }
                }
                .alert("Add a ToDo Item", isPresented: $isAlertShowing) {
                    TextField("Item Description", text: $itemDescriptionInput)
                    Button("Cancel", role: .cancel, action: clearInputs)
                    Button("Ok", action: addItem)
                }
            }
        }
    
    private func addItem() {
        viewModel.addItem(itemDescriptionInput)
        clearInputs()
    }
    
    private func clearInputs() {
        itemDescriptionInput = ""
    }
}

#Preview {
    ViewInspectorTesting()
}
