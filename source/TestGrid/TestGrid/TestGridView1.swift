//
//  TestGridView1.swift
//  TestGrid
//
//  Created by 苏州丰源天下传媒 on 2022/11/25.
//

import SwiftUI

// 学习Grid 和 GridRow 的基本用法
struct TestGridView1: View {
    
    private let CELL_HIGHT: CGFloat? = 100.0
    private let CELL_WIDTH: CGFloat? = 100.0
    
    var body: some View {
        Grid {
            GridRow {
                Text("1")
                    .frame(width: CELL_WIDTH, height: CELL_HIGHT)
                    .background(.gray)
                Text("2")
                    .frame(width: CELL_WIDTH, height: CELL_HIGHT)
                    .background(.gray)
                Text("3")
                    .frame(width: CELL_WIDTH, height: CELL_HIGHT)
                    .background(.gray)
            }
            GridRow {
                Text("4")
                    .frame(width: CELL_WIDTH, height: CELL_HIGHT)
                    .background(.gray)
                Text("5")
                    .frame(width: CELL_WIDTH, height: CELL_HIGHT)
                    .background(.gray)
                Text("6")
                    .frame(width: CELL_WIDTH, height: CELL_HIGHT)
                    .background(.gray)
            }
            GridRow {
                Text("7")
                    .frame(width: CELL_WIDTH, height: CELL_HIGHT)
                    .background(.gray)
                Text("8")
                    .frame(width: CELL_WIDTH, height: CELL_HIGHT)
                    .background(.gray)
                Text("9")
                    .frame(width: CELL_WIDTH, height: CELL_HIGHT)
                    .background(.gray)
            }
            GridRow {
                Text("删除")
                    .frame(width: CELL_WIDTH, height: CELL_HIGHT)
                    .background(.gray)
                Text("0")
                    .frame(width: CELL_WIDTH, height: CELL_HIGHT)
                    .background(.gray)
                Text("归零")
                    .frame(width: CELL_WIDTH, height: CELL_HIGHT)
                    .background(.gray)
            }
        }
        .font(.title)
    }
}

struct TestGridView1_Previews: PreviewProvider {
    static var previews: some View {
        TestGridView1()
    }
}
