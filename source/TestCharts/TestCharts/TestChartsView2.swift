//
//  TestChartsView2.swift
//  TestCharts
//
//  Created by 苏州丰源天下传媒 on 2022/12/6.
//

import SwiftUI
import Charts

struct TestChartsView2: View {
    
    let days = Calendar.current.shortWeekdaySymbols
    let learning = [100, 200, 150, 70, 80, 110, 90]
    
    var body: some View {
        VStack {
            Chart {
                ForEach(days.indices, id: \.self) { index in
                    BarMark(
                        x: .value("Day", days[index]),
                        y: .value("learning", learning[index])
                    )
//                    .foregroundStyle(by: .value("Day", days[index]))
                    .foregroundStyle(by: .value("learning", learning[index]))
                     .annotation {
                         Text("\(learning[index])")
                     }
                }
            }
        }
    }
}

struct TestChartsView2_Previews: PreviewProvider {
    static var previews: some View {
        TestChartsView2()
    }
}
