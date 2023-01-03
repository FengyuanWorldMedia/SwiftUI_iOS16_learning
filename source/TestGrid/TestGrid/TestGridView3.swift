//
//  TestGridView3.swift
//  TestGrid
//
//  Created by 苏州丰源天下传媒 on 2022/11/25.
//

import SwiftUI

// 学习使用 gridCellColumns
// 学习使用 verticalSpacing
struct TestGridView3: View {
    var body: some View {
        VStack {
            Text("我的行程-交通费明细")
                .foregroundColor(.gray)
                .fontWeight(.heavy)
                .font(.title)
                .padding(.top, 20)
                .padding(.bottom, 10)
            
            Grid(verticalSpacing: 10) {
                GridRow {
                    Label("飞机票", systemImage: "airplane.circle")
                    Text("3000元")
                }
                GridRow {
                    Label("计程车", systemImage: "car")
                    Text("200元")
                }
                GridRow {
                    Label("公交车", systemImage: "bus")
                    Text("9元")
                }
                
                Divider()
                
                GridRow {
                    Text("小计")
                    Text("3209元")
                }
                Divider()
                GridRow {
                    Label("火车", systemImage: "tram")
                    Text("3000元")
                }
                GridRow {
                    Label("计程车", systemImage: "bus.doubledecker")
                    Text("400元")
                }
                Divider()
                GridRow {
                    HStack {
                        Spacer().frame(width: UIScreen.main.bounds.width - 200)
                        Text("3400元")
                    }
                    .gridCellColumns(2)
                }
            }.font(.headline)
            Spacer()
        }
      
    }
}

struct TestGridView3_Previews: PreviewProvider {
    static var previews: some View {
        TestGridView3()
    }
}
