//
//  TestChartsView3.swift
//  TestCharts
//
//  Created by 苏州丰源天下传媒 on 2022/12/6.
//

import SwiftUI
import Charts

struct TestChartsView3: View {
    
    let days = Calendar.current.shortWeekdaySymbols
    let learning = [100, 200, 150, 70, 80, 110, 90]
    
    var body: some View {
        VStack {
            Chart {
                ForEach(days.indices, id: \.self) { index in
                    BarMark(
                        x: .value("learning", learning[index]),
                        y: .value("Day", days[index])
                    ).foregroundStyle(by: .value("Day", days[index]))
                     .annotation {
                         Text("\(learning[index])")
                     }
                }
            }
        }
    }
}

struct TestChartsView3_Previews: PreviewProvider {
    static var previews: some View {
        TestChartsView3()
    }
}
