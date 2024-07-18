//
//  OnboardingExperience.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/18/24.
//

import SwiftUI

struct OnboardingExperience: View {
    @State private var showMainApp = false
    
    var body: some View {
        if showMainApp {
            Text("Welcome to CosmoJourney")
                .multilineTextAlignment(.center)
                .font(.title)
        } else {
            VStack {
                
                TabView {
                    OnboardingView(title: "The Final Frontier", image: "globe", description: "Explore the universe from the comfort of your spaceship!")
                    OnboardingView(title: "Meet Alien Friends", image: "person.3.fill", description: "Make intergalactic friendships with beings from other planets!")
                    OnboardingView(title: "Astronaut Life", image: "suit.fill", description: "Live the astronaut lifestyle with zero gravity workouts!")
                }
                .tabViewStyle(.page)
                
                Spacer()
                Button("Get Started") {
                    showMainApp.toggle()
                }
                .padding()
                .font(.title)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.bottom)
            }
            
        }
    }
}


#Preview {
    OnboardingExperience()
}
