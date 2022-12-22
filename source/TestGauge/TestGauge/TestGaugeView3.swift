//
//  TestGaugeView3.swift
//  TestGauge
//
//  Created by 苏州丰源天下传媒 on 2022/12/4.
//

import SwiftUI

struct TestGaugeView3: View {
    var body: some View {
        Gauge(value: 35, in: 0...100) {
            Text("下载进度")
        } currentValueLabel: {
            Text("50%")
        } minimumValueLabel: {
            Text("0%")
        } maximumValueLabel: {
            Text("100%")
        }
    }
}

struct TestGaugeView3_Previews: PreviewProvider {
    static var previews: some View {
        TestGaugeView3()
    }
}
