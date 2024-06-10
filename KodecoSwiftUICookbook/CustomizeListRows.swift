//
//  CustomizeListRows.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/9/24.
//

import SwiftUI

struct CustomizeListRows: View {
    let names = ["Alice", "Bob", "Charlie", "Dave"]
    
    var body: some View {
        List(names, id: \.self) { name in
            Text(name)
                .listRowBackground(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .leading, endPoint: .trailing)
                )
            
        }
    }
}

#Preview {
    CustomizeListRows()
}
