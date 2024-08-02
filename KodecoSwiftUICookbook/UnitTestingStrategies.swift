//
//  UnitTestingStrategies.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 8/2/24.
//

import SwiftUI

class CounterViewModel: ObservableObject {
    @Published var count: Int = 0
    
    func increment() {
        count += 1
    }
    
    func decrement() {
        count -= 1
    }
}

struct UnitTestingStrategies: View {
    @StateObject var viewModel = CounterViewModel()
    
    var body: some View {
        VStack {
            Text("Count: \(viewModel.count)")
            Button("Increment", action: viewModel.increment)
            Button("Decrement", action: viewModel.decrement)
        }
    }
}

#Preview {
    UnitTestingStrategies()
}
