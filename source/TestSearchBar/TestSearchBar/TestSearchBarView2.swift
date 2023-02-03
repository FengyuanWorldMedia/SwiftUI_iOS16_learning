//
//  TestSearchBarView2.swift
//  TestSearchBar
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

struct TestSearchBarView2: View {
    let courses = ["Swift基础", "SQL基础与表设计", "SwiftUI教程", "Combine"]
    @State private var searchTerm = ""

    var body: some View {
        NavigationStack {
            List {
                ForEach(results, id: \.self) { name in
                    NavigationLink(destination: Text(name)) {
                        Text(name)
                    }
                }
            }
            .searchable(text: $searchTerm)
            .navigationTitle("课程检索")
        }
    }

    var results: [String] {
        if searchTerm.isEmpty {
            return courses
        } else {
            return courses.filter { $0.contains(searchTerm) }
        }
    }
}

struct TestSearchBarView2_Previews: PreviewProvider {
    static var previews: some View {
        TestSearchBarView2()
    }
}
