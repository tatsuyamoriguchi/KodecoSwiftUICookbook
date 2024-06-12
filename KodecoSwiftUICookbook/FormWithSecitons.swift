//
//  FormWithSecitons.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/11/24.
//

import SwiftUI

struct FormWithSecitons: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var age: String = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("Name", text: $name)
                    TextField("eMail", text: $email)
                }
                Section(header: Text("Additional Information")) {
                    TextField("Age", text: $age)
                }
                
            }
        }
        .navigationTitle("Registration Form")
        
    }
}

#Preview {
    FormWithSecitons()
}
