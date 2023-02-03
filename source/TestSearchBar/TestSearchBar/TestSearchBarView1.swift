//
//  TestSearchBarView1.swift
//  TestSearchBar
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

struct TestSearchBarView1: View {
    @State private var searchText = ""

    var body: some View {
        NavigationStack {
            Text("查询课程 \(searchText)")
                .searchable(text: $searchText, prompt: "输入课程名")
                .navigationTitle("我的课程")
        }
    }
}

struct TestSearchBarView1_Previews: PreviewProvider {
    static var previews: some View {
        TestSearchBarView1()
    }
}
