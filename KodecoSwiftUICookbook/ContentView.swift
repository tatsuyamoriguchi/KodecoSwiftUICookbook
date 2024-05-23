//
//  ContentView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/12/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationStack{
            
            VStack {
                Text("Hello, SwiftUI")
                Text("Hello, SwiftUI")
                    .opacity(0.5)
                Text("Hello, SwiftUI")
                    .opacity(0.2)
                NavigationLink(destination: DetailView()) {
                    Text("Go to Detail View")
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("Settings pressed")
                   
                    }) {
                        Text("Settings")
                    }
                }
            }
            
            Button(action: {
                print("Button tapped")
            }) {
                Text("Tap me.")
                    .font(.largeTitle)
                    .foregroundStyle(Color.white)
            }
            .padding()
            .background(
                LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(10)

            Image("Kodeco")
                .resizable()
                .foregroundStyle(.tint)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(color: .purple, radius:10, x: 10, y: 5)
            
            
            NavigationLink(destination: MoreSwiftUI()) {
                Text("Welcome to Kodeco SwiftUI Cookbook.")
            }
        }
        .padding()
    }
}


struct DetailView: View {
    let tasks = ["Design Login UI", "Login view UI code", "Authentication code", "Keychain code"]
    
    var body: some View {
        Text("This is the detail view.")
            .navigationTitle("Detail")
            .navigationBarTitleDisplayMode(.large)
        NavigationLink(destination: RegistrationForm()) {
            Text("Go to Registration Form")
        }

        List(tasks, id: \.self) { task in
            Text(task)
        }
    }
}

#Preview {
    ContentView()
}
