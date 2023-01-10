//
//  TestLocationDetectionView1.swift
//  TestLocationDetection
//
//  Created by 苏州丰源天下传媒 on 2022/11/26.
//

import SwiftUI

struct TestLocationDetectionView1: View {
    @State private var xPos = 50.0
    @State private var yPos = 150.0
    
    var body: some View {
        VStack(spacing: 0.0) {
            Rectangle()
                .fill(.brown)
                .frame(width: 100, height: 100)
                .onTapGesture { location in
                    print("A点击位置: \(location)")
                }
            Rectangle()
                .fill(.gray)
                .frame(width: 100, height: 100)
                .onTapGesture(count: 2, coordinateSpace: .global) { gloabalLocation in
                    print("A-1双击全局位置: \(gloabalLocation)")
                }
            VStack (spacing: 0.0) {
                Circle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
                    .onTapGesture { location in
                        print("C 点击位置: \(location)")
                    }
                Circle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                    .onTapGesture { location in
                        print("D 点击位置: \(location)")
                    }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

// global
// A 点击位置: (197.0, 339.3333282470703)
// B 点击位置: (196.3333282470703, 435.0)
// C 点击位置: (196.66665649414062, 538.0)
// D 点击位置: (197.3333282470703, 637.3333282470703)

// 相对位置
// A 点击位置: (49.33333333333334, 55.0)
// B 点击位置: (46.99998982747397, 49.33332824707031)
// C 点击位置: (50.99998982747397, 56.0)
// D 点击位置: (51.99998982747397, 50.0)

struct TestLocationDetectionView1_Previews: PreviewProvider {
    static var previews: some View {
        TestLocationDetectionView1()
    }
}
