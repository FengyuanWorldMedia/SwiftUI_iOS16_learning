//
//  TestGradientView2.swift
//  TestGradient
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

struct TestGradientView2: View {
    var body: some View {
        VStack {
            Spacer()
            Circle()
                .fill(.green.shadow(.drop(color: .black, radius: 5)))
                .frame(width: 100, height: 100)
                .padding()
            Circle()
                .fill(.orange.shadow(.inner(color: .black, radius: 10)))
                .frame(width: 100, height: 100)
                .padding()
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width)
        .background(Color.cyan.gradient)
    }
}

struct TestGradientView2_Previews: PreviewProvider {
    static var previews: some View {
        TestGradientView2()
    }
}
