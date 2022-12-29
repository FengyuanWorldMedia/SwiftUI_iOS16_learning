//
//  TestChartsView5.swift
//  TestCharts
//
//  Created by nnio on 2022/12/6.
//

import SwiftUI
import Charts

struct TestChartsView5: View {
    
    let txt = """
            巩固知识、积累经验、获得新知识新方法新思路。
            练习长才干，实践出真知。而且练习和实践中，要注意温故而知新，也就是说从知识的学习和应用中，推陈出新。
            """
    
    let days = Calendar.current.shortWeekdaySymbols
    let learning = [100, 200, 150, 70, 80, 110, 90]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Chart {
                ForEach(days.indices, id: \.self) { index in
                    BarMark(
                        x: .value("Day", days[index]),
                        y: .value("learning", learning[index])
                    ).foregroundStyle(by: .value("Day", days[index]))
                     .annotation {
                         Text("\(learning[index])")
                     }
                }
                
                ForEach(days.indices, id: \.self) { index in
                       LineMark(
                           x: .value("Day",  days[index]),
                           y: .value("learning", learning[index])
                       )
                       .foregroundStyle(.pink)
                       .lineStyle(StrokeStyle(lineWidth: 2.0))
                }
            }.frame(height: UIScreen.main.bounds.height/2)
            
            Text("学习方法")
                .font(.title3)
                .bold()
            Text("1、学习有计划")
            Text("2、听讲先预习")
            Text("3、练习前复习")
            Text("4、向老师学习")
            Text("5、向书本学习")
            Text("6、在练习中学")
            Text(txt)
        }.ignoresSafeArea(.all)
    }
}

struct TestChartsView5_Previews: PreviewProvider {
    static var previews: some View {
        TestChartsView5()
    }
}
