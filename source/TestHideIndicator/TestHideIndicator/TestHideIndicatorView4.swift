//
//  TestHideIndicatorView4.swift
//  TestHideIndicator
//
//  Created by 苏州丰源天下传媒 on 2022/11/28.
//

import SwiftUI

// automatic 意味着 根据 SwiftUI的配置情况进行显示（不在乎滚动条显示的情况下，不用设置，默认为automatic）
struct TestHideIndicatorView4: View {
    var body: some View {
        
        
        VStack {
            List(1..<20) { i in
                Label("第 \(i) 个狼人", systemImage: "pawprint.circle.fill")
                    .foregroundColor(.red)
            }
            List(1..<20) { i in
                Label("第 \(i) 个狼人", systemImage: "pawprint.circle.fill")
                    .foregroundColor(.black)
            }
            .scrollIndicators(.automatic)
            
        }.scrollIndicators(.never)
           
       }
}

struct TestHideIndicatorView4_Previews: PreviewProvider {
    static var previews: some View {
        TestHideIndicatorView4()
    }
}
