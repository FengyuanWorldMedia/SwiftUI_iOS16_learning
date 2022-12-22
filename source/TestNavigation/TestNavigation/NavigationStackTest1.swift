//
//  ContentView.swift
//  NavigationStackTest1
//
//  Created by 苏州丰源天下传媒 on 2022/11/23.
//

import SwiftUI

// NavigationStack是 NavigationView的一个代替，用法也基本一样。

struct NavigationStackTest1: View {
    var body: some View {
        NavigationStack {
           List(1..<10) { i in
               NavigationLink {
                   Text("第 \(i) 个 画面")
               } label: {
                   Label(" 打开第 \(i) 个 画面", systemImage: "\(i).circle")
               }
           }
           .navigationTitle("NavigationStackTest1")
       }
    }
}

struct NavigationStackTest1_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackTest1()
    }
}
