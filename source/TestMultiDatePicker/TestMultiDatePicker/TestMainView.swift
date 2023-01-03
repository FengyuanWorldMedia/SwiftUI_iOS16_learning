//
//  ContentView.swift
//  TestMultiDatePicker
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

struct TestMainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    TestMultiDatePickerView1()
                } label: {
                    Label("TestMultiDatePickerView1", systemImage: "\(1).circle")
                }
                NavigationLink {
                    TestMultiDatePickerView2()
                        .environment(\.calendar, Calendar(identifier: .chinese))
                        .environment(\.locale, Locale(identifier: "zh-Hans"))
                } label: {
                    Label("TestMultiDatePickerView2", systemImage: "\(2).circle")
                }
                Spacer()
            }
           .navigationTitle("TestMultiDatePickerView")
       }
    }

}

struct TestMainView_Previews: PreviewProvider {
    static var previews: some View {
        TestMainView()
    }
}
