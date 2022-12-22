//
//  NavigationStackTest4.swift
//  TestNavigation
//
//  Created by 苏州丰源天下传媒 on 2022/11/23.
//

import SwiftUI

// 1. 学习使用 NavigationPath 进行画面的初始化
// 2. 复习在画面里 初始化 State变量
// 3. 学习 navigationDestination 的 连续使用（类型可以不同）

struct NavigationStackTest4: View {
    
    @State private var presentedPages = NavigationPath()
    
    init() {
        var temp = NavigationPath()
        temp.append(1)
        temp.append(2)
        temp.append("点击进来的画面1")
        _presentedPages = State(initialValue: temp)
    }

    var body: some View {
       NavigationStack(path: $presentedPages) {
           NavigationLink(value: "点击进来的画面1") {
               Text("点击1")
           }
           NavigationLink(value: "点击进来的画面2") {
               Text("点击2")
           }
           List(1..<10) { i in
               NavigationLink(value: i) {
                   Label(" 打开第 \(i) 个 画面", systemImage: "\(i).circle")
               }
           }
           .navigationDestination(for: Int.self) { i in
               Text("Int 画面 \(i)")
           }
           .navigationDestination(for: String.self) { i in
               Text("String  画面 \(i)")
           }
           .navigationTitle("NavigationStackTest4")
       }
   }
}

struct NavigationStackTest4_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackTest4()
    }
}
