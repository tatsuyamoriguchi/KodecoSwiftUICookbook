//
//  LineChartView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/20/24.
//

import SwiftUI
import Charts

struct LineChartView: View {
    
    let salesData: [PetSales] = [
        .init(month: "January", animal: .dog, value: 50),
        .init(month: "January", animal: .cat, value: 30),
        .init(month: "January", animal: .bird, value: 150),
        .init(month: "Janauary", animal: .fish, value: 80),

            .init(month: "February", animal: .dog, value: 120),
          .init(month: "February", animal: .cat, value: 23),
          .init(month: "February", animal: .bird, value: 122),
          .init(month: "February", animal: .fish, value: 94),
          
            .init(month: "March", animal: .dog, value: 56),
          .init(month: "March", animal: .cat, value: 27),
          .init(month: "March", animal: .bird, value: 100),
          .init(month: "March", animal: .fish, value: 99),
          
            .init(month: "April", animal: .dog, value: 63),
          .init(month: "April", animal: .cat, value: 23),
          .init(month: "April", animal: .bird, value: 99),
          .init(month: "April", animal: .fish, value: 92),
          
            .init(month: "May", animal: .dog, value: 45),
          .init(month: "May", animal: .cat, value: 45),
          .init(month: "May", animal: .bird, value: 80),
          .init(month: "May", animal: .fish, value: 94),
          
            .init(month: "June", animal: .dog, value: 60),
          .init(month: "June", animal: .cat, value: 22),
          .init(month: "June", animal: .bird, value: 67),
          .init(month: "June", animal: .fish, value: 100),

        
        
    ]
    
    var body: some View {
        Chart {
            ForEach(salesData) { salesData in
                LineMark(
                    x: .value("Month", salesData.month),
                    y: .value("Sales", salesData.value)
                )
                    .foregroundStyle(by: .value("Animal", salesData.animal.rawValue))

            }
        }
    }
}

#Preview {
    LineChartView()
}
