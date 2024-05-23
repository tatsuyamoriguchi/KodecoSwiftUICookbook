//
//  RegistrationForm.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/15/24.
//

import SwiftUI

struct RegistrationForm: View {
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("Username", text: $username)
                    TextField("Email", text: $email)
                }
                
                Section(header: Text("Login Credentials"), footer: Text("Hello this is a footer.")) {
                    TextField("Password", text: $password)
                }
                
                Section {
                    Button(action: Register().register) {
                        Text("Register")
                    }
                }
                
                Section(footer: Text("Keep the credential information with you.")) {
                    Text("Hello")
                
                }
            }
        }
        .navigationTitle("Registration Form")
    }
}

struct Register {
    func register() {
        print("register fundtion executed")
    }
}

#Preview {
    RegistrationForm()
}
