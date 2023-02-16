//
//  TestHideIndicatorView2.swift
//  TestHideIndicator
//
//  Created by 苏州丰源天下传媒 on 2022/11/28.
//

import SwiftUI

// visible 显示滚动条，在iOS只有滚动的时候才会显示。
struct TestHideIndicatorView2: View {
    var body: some View {
           List(1..<100) { i in
               Label("第 \(i) 个狼人", systemImage: "pawprint.circle.fill")
                   .foregroundColor(.red)
           }
           .scrollIndicators(.visible)
       }
}

struct TestHideIndicatorView2_Previews: PreviewProvider {
    static var previews: some View {
        TestHideIndicatorView2()
    }
}
