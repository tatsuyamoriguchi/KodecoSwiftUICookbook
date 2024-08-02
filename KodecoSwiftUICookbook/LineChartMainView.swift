//
//  LineChartMainView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/20/24.
//

import SwiftUI

struct LineChartMainView: View {
    var body: some View {
        Text("Pet Store Monthly Sales")
            .font(.title)
        LineChartView()
    }
}

#Preview {
    LineChartMainView()
}
