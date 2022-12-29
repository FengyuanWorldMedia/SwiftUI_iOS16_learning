//
//  TestChartsView6.swift
//  TestCharts
//
//  Created by nnio on 2022/12/6.
//

import SwiftUI
import Charts

let txt = """
    首先是风速。一般地,风的速度越大,产生的风浪也就越大。另一个因素是风时,也就是同一个方向的风连续吹刮的时间。一般地说,风对水面作用的时间越长,水体获得的能量越大,风浪也就越大。自然界中的风,它们的速度和方向都是不断变化着....
    另外一个影响因素就是风的作用距离,一般叫做风区长度。风区的作用是不难理解的。我们站在岸边观察海中的波浪,如果风从陆地吹向海洋,很显然。离岸越近的点波浪越小,离岸越远的点波浪越大。
"""

struct HeightDataStruct : Identifiable {
    var id = UUID()
    var day: Int
    var height: Float
}


struct TestChartsView6: View {
    
    var data1 : Array<HeightDataStruct> {
        let days = 1...30
        return days.map {
            HeightDataStruct(day: $0, height: Float.random(in: 20...30.0))
        }
    }
    
    var data2 : Array<HeightDataStruct> {
        let days = 1...30
        return days.map {
            HeightDataStruct(day: $0, height: Float.random(in: 2...6.0))
        }
    }
     
    
    var body: some View {
        VStack {
            Chart {
                ForEach(data1) {
                       LineMark(
                            x: .value("day",  $0.day),
                            y: .value("height-A", $0.height),
                            series: .value("海风速度", "A")
                       )
                       .foregroundStyle(.green)
                       .lineStyle(StrokeStyle(lineWidth: 1.0))
                    
                }
                
                ForEach(data2) {
                    LineMark(
                            x: .value("day",  $0.day),
                            y: .value("height-B", $0.height),
                            series: .value("海浪高度", "B")
                       )
                       .foregroundStyle(.red)
                       .lineStyle(StrokeStyle(lineWidth: 1.0))
                }
            }
            .frame(height: UIScreen.main.bounds.height/2)
            
            Text("海风呼啸,海浪滔滔")
                .bold()
                .font(.title)
                .padding(.top, 20)
            Text(txt)
                .foregroundColor(.black)
                .fontWeight(.medium)
                .padding(.top, 10)
            
            Spacer()
        }
    }
}

struct TestChartsView6_Previews: PreviewProvider {
    static var previews: some View {
        TestChartsView6()
    }
}
