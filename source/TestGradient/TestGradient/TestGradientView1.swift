//
//  TestGradientView1.swift
//  TestGradient
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

struct TestGradientView1: View {
    var body: some View {
        VStack {
            Spacer()
            Rectangle()
                .fill(.blue.gradient)
                .frame(width: 200, height: 200)
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 200)
            Rectangle()
                .fill(.orange.gradient)
                .frame(width: 200, height: 200)
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width)
        .background(Color.cyan.gradient)
    }
}

struct TestGradientView1_Previews: PreviewProvider {
    static var previews: some View {
        TestGradientView1()
    }
}
