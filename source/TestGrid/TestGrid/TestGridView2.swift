//
//  TestGridView2.swift
//  TestGrid
//
//  Created by 苏州丰源天下传媒 on 2022/11/25.
//

import SwiftUI

// 给出了 每个CellView和外部互动的 示例
struct TestGridView2: View {
    
    @State private var lastClickedId = ""
    
    var body: some View {
       Grid {
           ForEach(0..<5, id: \.self) { i in
               GridRow {
                   ForEach(0..<5, id: \.self) { j in
                       ChildView(lastClickedId: $lastClickedId, id: "\(i)-\(j)")
                           .background(Color.orange)
                           .onTapGesture {
                               let currentId = "\(i)-\(j)"
                               print("currentId:\(currentId)")
                               lastClickedId = currentId
                           }
                   }
               }
           }
       }
   }
}


struct ChildView: View {
    @Binding var lastClickedId: String
    var id: String
    
    @State private var isClicked = false
    
    var body: some View {
        Text(id)
            .frame(width: 60, height: 30)
            .background(isClicked ? Color.green : Color.orange)
            .onChange(of: lastClickedId, perform: { _ in
                withAnimation {
                    self.isClicked = lastClickedId == id
                }
            })
    }
}

struct TestGridView2_Previews: PreviewProvider {
    static var previews: some View {
        TestGridView2()
    }
}
