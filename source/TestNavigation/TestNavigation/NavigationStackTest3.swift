//
//  NavigationStackTest3.swift
//  TestNavigation
//
//  Created by 苏州丰源天下传媒 on 2022/11/23.
//

import SwiftUI
// navigationDestination 修饰符把 跳转画面和 NavigationLink 分开定义。

// NavigationStack path 参数，让初始显示的 画面 变得容易。
// [1, 2, 6] 表示，先显示 第6个画面；返回后，显示 第2个画面； 再返回，显示 第1个画面.
// 最后返回，会到 NavigationStackTest3 画面。
// 这个特性对于，通过 Deeplink过来的 显示功能来讲，提供了 很大的便利。

struct NavigationStackTest3: View {
    @State private var presentedPages = [1, 2, 6]

    var body: some View {
        NavigationStack(path: $presentedPages) {
          List(1..<10) { i in
              NavigationLink(value: i) {
                  Label(" 打开第 \(i) 个 画面", systemImage: "\(i).circle")
              }
          }
          .navigationDestination(for: Int.self) { i in
              Text("第 \(i) 个 画面")
          }
          .navigationTitle("NavigationStackTest3")
      }
    }
}

struct NavigationStackTest3_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackTest3()
    }
}
