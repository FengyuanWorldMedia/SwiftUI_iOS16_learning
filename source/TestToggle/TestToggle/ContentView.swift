//
//  ContentView.swift
//  TestToggle
//
//  Created by 苏州丰源天下传媒 on 2022/12/4.
//

import SwiftUI

struct Course : Identifiable {
    var id : String
    var isSubscribed : Bool
}

struct ContentView: View {
    
    @State private var courseList = [
        Course(id: "SwiftUI 基础", isSubscribed: false),
        Course(id: "SwiftUI 新特性", isSubscribed: true),
        Course(id: "Swift 语言基础", isSubscribed: true),
        Course(id: "Swift 开发进阶", isSubscribed: false),
        Course(id: "Swift Combine 框架", isSubscribed: true)
    ]
     
    var body: some View {
        VStack {
            Form {
                Section {
//                    ForEach(courseList, id: \.isSubscribed) { list in
//
//                    }
                    ForEach($courseList) { $list in
                        Toggle(list.id, isOn: $list.isSubscribed)
                    }
                }
                Section {
                    Toggle(sources: $courseList, isOn: \.isSubscribed,  label: {
                        Text("我要学习所有课程")
                    })
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
