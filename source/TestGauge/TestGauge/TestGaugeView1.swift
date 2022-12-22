//
//  TestGaugeView1.swift
//  TestGauge
//
//  Created by 苏州丰源天下传媒 on 2022/12/4.
//

import SwiftUI

struct TestGaugeView1: View {
    var body: some View {
        Gauge(value: 36, in: 34...42) {
            Text("°C")
        } currentValueLabel: {
            Text("36")
        }
        .gaugeStyle(.accessoryCircular)
        .tint(Gradient(colors: [.green, .yellow, .orange]))
    }
}

struct TestGaugeView1_Previews: PreviewProvider {
    static var previews: some View {
        TestGaugeView1()
    }
}
