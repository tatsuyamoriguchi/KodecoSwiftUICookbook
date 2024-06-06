//
//  StateManagementWithCombine.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/23/24.
//

import SwiftUI
import Combine

struct StateManagementWithCombine: View {
    @StateObject private var jokeFetcher = JokeFetcher()
    
    var body: some View {
        VStack {
            Text(jokeFetcher.joke)
                .padding()
            Button("Fetch Joke") {
                jokeFetcher.fetchJoke()
            }

        }
        // The onAppear modifier is used to fetch a joke when the view first appears, ensuring there’s a joke displayed when the app launches.
        .onAppear {
            jokeFetcher.fetchJoke()
        }
    }
}

class JokeFetcher: ObservableObject {
    @Published var joke: String = ""
    private var cancellable: AnyCancellable?
    private var jokes = [
    "Why don't scientists trust atoms? Because they make up everything!",
    "Why did the bicycle fall over? Because it was two tired.",
    "Why don't some animal play cards? Because they're afraid of cheetahs!",
    "Why did the scarecrow win an award? Because he was outstanding in his field."
    ]
    
    func fetchJoke() {
        // Note: This example uses a hardcoded list of jokes. In a real application, you would replace this with network code to fetch jokes from a server.
        
        // Update 'joke' with the result.
        if let randomJoke = jokes.randomElement() {
            joke = randomJoke
        }
    }
    
    deinit {
        cancellable?.cancel()
    }
}

#Preview {
    StateManagementWithCombine()
}
