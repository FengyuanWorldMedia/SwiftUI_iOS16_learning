//
//  NavigationSplitViewTest1.swift
//  TestNavigation
//
//  Created by 苏州丰源天下传媒 on 2022/11/23.
//

import SwiftUI

// NavigationStack 是在一个页面上操作。
// 如果想使用多列的话，NavigationSplitView。
// 示例中，展示一个最简单的分列，好像和 NavigationStack 没什么区别。
// 在iPad中展示效果（iPad Pro 11-inch）。

struct NavigationSplitViewTest1: View {
    @State private var students = ["丰源学员1", "丰源学员2", "丰源学员3"]
    @State private var selectedStudent: String?

    var body: some View {
        NavigationSplitView {
            List(students, id: \.self,
                 selection: $selectedStudent,
                 rowContent: { rowData in
                    self.studentView(rowData)
                })
        } detail: {
                    Text(selectedStudent ?? "没有学员信息.")
        }.navigationTitle("NavigationSplitViewTest1")
    }
    
    func studentView(_ desc: String) -> some View {
        HStack {
            Label("学员:\(desc)", systemImage: "person.circle")
        }
    }
}

struct NavigationSplitViewTest1_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSplitViewTest1()
    }
}
