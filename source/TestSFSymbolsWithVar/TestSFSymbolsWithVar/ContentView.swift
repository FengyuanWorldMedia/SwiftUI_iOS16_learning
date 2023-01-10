//
//  ContentView.swift
//  TestSFSymbolsWithVar
//
//  Created by 丰源天下传媒 on 2022/11/29.
//

import SwiftUI

struct ContentView: View {
    @State private var value = 0.0
    
    var body: some View {
        VStack (spacing: 30) {
            
            HStack{
                Image(systemName: "chart.bar.fill", variableValue: 0.3)
                Image(systemName: "chart.bar.fill", variableValue: 0.6)
                Image(systemName: "chart.bar.fill", variableValue: 1.0)
            }
            
            HStack{
                Image(systemName: "wifi", variableValue: 0.3)
                Image(systemName: "wifi", variableValue: 0.6)
                Image(systemName: "wifi", variableValue: 1.0)
            }.foregroundColor(.mint)
            
            HStack {
              Image(systemName: "aqi.low", variableValue: value)
              Image(systemName: "wifi.router.fill", variableValue: value)
              Image(systemName: "waveform", variableValue: value)
              // 不支持变量
              Image(systemName: "lasso.and.sparkles", variableValue: value)
              // 不支持变量
              Image(systemName: "thermometer.snowflake.circle.fill", variableValue: value)
            }.foregroundColor(.cyan)
            
            Slider(value: $value)
        }
        .font(.system(.largeTitle))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
