//
//  TestChartsView4.swift
//  TestCharts
//
//  Created by nnio on 2022/12/6.
//

import SwiftUI
import Charts

struct TestChartsView4: View {
    
    let days = Calendar.current.shortWeekdaySymbols
    let learning = [100, 200, 150, 70, 80, 110, 90]
    
    var body: some View {
        VStack {
            Chart {
                ForEach(days.indices, id: \.self) { index in
                       LineMark(
                           x: .value("Day",  days[index]),
                           y: .value("learning", learning[index])
                       )
                       .foregroundStyle(.pink)
                       .lineStyle(StrokeStyle(lineWidth: 2.0))
                }
            }
        }
    }
}

struct TestChartsView4_Previews: PreviewProvider {
    static var previews: some View {
        TestChartsView4()
    }
}
