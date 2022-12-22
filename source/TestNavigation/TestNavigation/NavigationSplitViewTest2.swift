//
//  NavigationSplitViewTest2.swift
//  TestNavigation
//
//  Created by 苏州丰源天下传媒 on 2022/11/23.
//

import SwiftUI

struct Grade: Identifiable, Hashable {
    let id = UUID()
    var name: String
    var students: [String]
}

// NavigationSplitView 在手机里的表现，类似3级的 NavigationStack。
// 学习 NavigationSplitViewStyle
//      balanced 缩小detail空间，显示列（在列名比较重要的时候使用）
//      prominentDetail 尽可能的显示 detail空间（在详细比较重要的时候使用）
//      automatic 自动
// 在iPad 中的表现，就比较有层次感。

struct NavigationSplitViewTest2: View {
    @State private var grades = [Grade(name: "Swift进阶",students: ["学员01", "学员02", "学员03"]),
                            Grade(name: "Swift基础",students: ["学员11", "学员12", "学员13"]),
                            Grade(name: "SwiftUI新特性",students: ["学员21", "学员22"])]

    @State private var selectedGrade: Grade?
    @State private var selectedStudent: String?

    var body: some View {
        NavigationSplitView {
            List(grades, selection: $selectedGrade) { grade in
                Text(grade.name).tag(grade)
            }.navigationSplitViewColumnWidth(200)
        } content: {
            List(selectedGrade?.students ?? [], id: \.self, selection: $selectedStudent) { student in
                Text(student)
            }
        } detail: {
            Text(selectedStudent ?? "没有选择学生")
        }
        .navigationSplitViewStyle(.automatic)
    }
}

struct NavigationSplitViewTest2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSplitViewTest2()
    }
}
