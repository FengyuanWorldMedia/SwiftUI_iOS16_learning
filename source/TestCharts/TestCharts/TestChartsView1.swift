//
//  TestChartsView1.swift
//  TestCharts
//
//  Created by 苏州丰源天下传媒 on 2022/12/6.
//

import SwiftUI
import Charts

struct TestChartsView1: View {
    var body: some View {
        Chart {
            BarMark(
                x: .value("Day", "周一"),
                y: .value("learning", 100)
            )
            BarMark(
                x: .value("Day", "周二"),
                y: .value("learning", 200)
            )
            BarMark(
                x: .value("Day", "周三"),
                y: .value("learning", 150)
            )
            BarMark(
                x: .value("Day", "周四"),
                y: .value("learning", 70)
            )
            BarMark(
                x: .value("Day", "周五"),
                y: .value("learning", 80)
            )
            BarMark(
                x: .value("Day", "周六"),
                y: .value("learning", 110)
            )
 
            BarMark(
                x: .value("Day", "周日"),
                y: .value("learning", 90)
            )
        }.foregroundColor(Color.cyan)
    }
}

struct TestChartsView1_Previews: PreviewProvider {
    static var previews: some View {
        TestChartsView1()
    }
}
