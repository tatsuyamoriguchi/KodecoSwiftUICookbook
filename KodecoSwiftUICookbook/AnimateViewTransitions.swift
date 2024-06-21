//
//  AnimateViewTransitions.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/21/24.
//

import SwiftUI

struct AnimateViewTransitions: View {
    
    @State private var showIngredients = false
    let foodItems = ["Please choose a food","Pizza", "Burger", "Pasta"]
    @State private var selectedFood = "Please choose a food"
    
    var body: some View {
        VStack {
            Picker("Choose a food", selection: $selectedFood) {
                ForEach(foodItems, id: \.self) {
                    Text($0)
                }
            }
//            .pickerStyle(.wheel)
            .padding()
            
            Button(action: {
                withAnimation {
                    showIngredients.toggle()
                }
            }) {
                Text(showIngredients ? "Hide Ingredients" : "Show Ingredients")
            }
            .padding()
            
            if showIngredients {
                IngredientView(food: selectedFood)
                    .transition(.move(edge: .leading))
            }
            Spacer()
        }
    }
}

struct IngredientView: View {
    let food: String
    
    var ingredients: [String] {
        switch food {
        case "Pizza": return ["Dough", "Tomato Sauce", "Cheese", "Toppings"]
        case "Burger": return ["Bun", "Patty", "Lettuce", "Tomato", "Sauce"]
        case "Pasta": return ["Pasta", "Olive oil", "Garlic", "Tomato Sauce"]
        default: return []
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(food) Ingredients: ")
                .font(.headline)
                .padding(.top)
            ForEach(ingredients, id: \.self) { ingredient in
                Text(ingredient)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.blue.opacity(0.2))
        .cornerRadius(10)
    }
}

#Preview {
    AnimateViewTransitions()
}
