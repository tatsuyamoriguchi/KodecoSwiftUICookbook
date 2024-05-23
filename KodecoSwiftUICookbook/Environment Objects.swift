//
//  Environment Objects.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/20/24.
//

import SwiftUI

class GameSettings: ObservableObject {
    @Published var score = 0
}

struct RootView: View {
    var body: some View {
        Environment_Objects()
            .environmentObject(GameSettings())
    }
}

struct Environment_Objects: View {
    @EnvironmentObject var settings: GameSettings
    var body: some View {
        Text("Score: \(settings.score)")
        Button("Increment Score") {
            settings.score += 1
            print("Button tapped")
        }
    }
}

#Preview {
    RootView()
}
