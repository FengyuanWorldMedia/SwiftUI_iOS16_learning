//
//  TestHideIndicatorView1.swift
//  TestHideIndicator
//
//  Created by 苏州丰源天下传媒  on 2022/11/28.
//

import SwiftUI

// scrollIndicators
// `ScrollView``, ``List``, or ``TextEditor``

// hidden 在给定的轴上不显示（根据系统的不同-有可能在滚动的情况下显示）
struct TestHideIndicatorView1: View {
    var body: some View {
           List(1..<100) { i in
               Label("第 \(i) 个狼人", systemImage: "pawprint.circle.fill")
                   .foregroundColor(.red)
           }
           .scrollIndicators(.visible, axes: [.vertical])
       }
}

struct TestHideIndicatorView1_Previews: PreviewProvider {
    static var previews: some View {
        TestHideIndicatorView1()
    }
}
