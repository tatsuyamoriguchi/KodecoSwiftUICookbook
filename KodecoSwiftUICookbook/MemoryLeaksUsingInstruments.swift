//
//  MemoryLeaksUsingInstruments.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/16/24.
//

import SwiftUI

class LeakyClass {
    var handler: (() -> Void)?
    let value: Int
    
    init(value: Int) {
        self.value = value
        handler = {  [weak self] in
            self?.doSomething()
        }
    }
    
    func doSomething() {
        print("Doing something....")
    }
    
    deinit {
        print("LeakyClass deinitializaiton")
    }
}

struct MemoryLeaksUsingInstruments: View {
    @State private var isDetailViewShowing = false
    
    var body: some View {
        VStack {
            Button("Go to Detail View") {
                isDetailViewShowing = true
            }
            .sheet(isPresented: $isDetailViewShowing, content: {
                NewDetailView(leakyClass: LeakyClass(value: Int.random(in: 0..<1000)))
            })
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct NewDetailView: View {
    let leakyClass: LeakyClass
    
    var body: some View {
        Text("Detail View: \(leakyClass.value)")
            .onDisappear {
                leakyClass.handler?()
            }
    }
}

#Preview {
    MemoryLeaksUsingInstruments()
}
