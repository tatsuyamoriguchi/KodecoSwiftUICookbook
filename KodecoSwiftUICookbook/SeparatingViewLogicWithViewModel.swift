//
//  SeparatingViewLogicWithViewModel.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 8/9/24.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var title = "Hello, World!"
    
    func buttonTapped() {
        title = "Button was tapped."
    }
}

struct SeparatingViewLogicWithViewModel: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.title)
            Button(action: viewModel.buttonTapped) {
                Text("Tap me")
            }
        }
    }
}


#Preview {
    SeparatingViewLogicWithViewModel()
}
