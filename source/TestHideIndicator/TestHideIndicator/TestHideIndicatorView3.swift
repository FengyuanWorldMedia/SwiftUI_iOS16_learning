//
//  TestHideIndicatorView3.swift
//  TestHideIndicator
//
//  Created by 苏州丰源天下传媒 on 2022/11/28.
//

import SwiftUI

// never 坚决不显示
struct TestHideIndicatorView3: View {
    var body: some View {
           List(1..<100) { i in
               Label("第 \(i) 个狼人", systemImage: "pawprint.circle.fill")
                   .foregroundColor(.red)
           }
           .scrollIndicators(.never)
       }
}

struct TestHideIndicatorView3_Previews: PreviewProvider {
    static var previews: some View {
        TestHideIndicatorView3()
    }
}
