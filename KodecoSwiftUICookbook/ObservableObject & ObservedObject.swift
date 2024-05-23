//
//  ObservableObject & ObservedObject.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/20/24.
//

import SwiftUI

class UserSettings: ObservableObject {
    @Published var username = "Anonymous"
}

struct ObservableObject___ObservedObject: View {
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        VStack {
            Text("Hello, \(settings.username)")
            Button("Change Username") {
                settings.username = "John Doe"
            }
     
        }
    }
}

#Preview {
    ObservableObject___ObservedObject()
}
