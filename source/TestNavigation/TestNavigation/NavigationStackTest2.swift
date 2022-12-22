//
//  NavigationStackTest2.swift
//  TestNavigation
//
//  Created by 苏州丰源天下传媒 on 2022/11/23.
//

import SwiftUI

// navigationDestination 修饰符把 跳转画面和 NavigationLink 分开定义。
struct NavigationStackTest2: View {
    var body: some View {
       NavigationStack {
           List(11..<15) { i in
               NavigationLink(value: i) {
                   Label(" 打开第 \(i) 个 画面", systemImage: "\(i).circle")
               }
           }
           .navigationDestination(for: Int.self) { i in
               Text("第 \(i) 个 画面")
           }
           .navigationTitle("NavigationStackTest2")
       }
    }
}

struct NavigationStackTest2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackTest2()
    }
}
