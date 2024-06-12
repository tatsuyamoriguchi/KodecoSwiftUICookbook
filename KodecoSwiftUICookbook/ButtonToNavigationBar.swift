//
//  ButtonToNavigationBar.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/10/24.
//

import SwiftUI

struct ButtonToNavigationBar: View {
    var body: some View {
        NavigationStack {
            Text("Aloha, Alamoana.")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            print("Button Tapped")
                        }) {
                            Image(systemName: "gear")
                        }
                    }
                }
        }
        
    }
}

#Preview {
    ButtonToNavigationBar()
}
