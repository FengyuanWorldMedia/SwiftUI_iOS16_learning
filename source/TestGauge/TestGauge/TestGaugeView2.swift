//
//  TestGaugeView2.swift
//  TestGauge
//
//  Created by 苏州丰源天下传媒 on 2022/12/4.
//

import SwiftUI

struct TestGaugeView2: View {
    
    @State var displayedProgress : Double = 0.4
    
    var body: some View { 
        VStack (spacing: 30){
            Gauge(value: displayedProgress, in: 0...1) {
                Text("%")
            } currentValueLabel: {
                Text("\(Int(displayedProgress * 100))")
                    .font(.caption)
            }
            .gaugeStyle(.accessoryLinear)
            .tint(Gradient(colors: [.green, .yellow, .orange]))
            
            ProgressView("🌡️…", value: displayedProgress)
        }
    }
}

struct TestGaugeView2_Previews: PreviewProvider {
    static var previews: some View {
        TestGaugeView2()
    }
}
