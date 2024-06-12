//
//  CreateDatePicker.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/12/24.
//

import SwiftUI

struct CreateDatePicker: View {
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
            Text("Selected date is \(selectedDate).")
            
            DatePicker("Select a date", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(.graphical)
                .padding()
        }
        .padding()
    }
}

#Preview {
    CreateDatePicker()
}
