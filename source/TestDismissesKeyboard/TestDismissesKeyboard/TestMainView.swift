//
//  TestMainView.swift
//  TestDismissesKeyboard
//
//  Created by 苏州丰源天下传媒 on 2022/11/28.
//

import SwiftUI

// 😅测试翻车了😅
struct TestMainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    TestDismissesKeyboardView1()
                } label: {
                    Label("TestDismissesKeyboardView1-immediately", systemImage: "\(1).circle")
                }
                NavigationLink {
                    TestDismissesKeyboardView2()
                } label: {
                    Label("TestDismissesKeyboardView1-never", systemImage: "\(2).circle")
                }
                NavigationLink {
                    TestDismissesKeyboardView3()
                } label: {
                    Label("TestDismissesKeyboardView1-interactively", systemImage: "\(3).circle")
                }
                NavigationLink {
                    TestDismissesKeyboardView4()
                } label: {
                    Label("TestDismissesKeyboardView1-automatic", systemImage: "\(4).circle")
                }
                Spacer()
            }
           .navigationTitle("TestDismissesKeyboardView")
       }
    }
}

struct TestMainView_Previews: PreviewProvider {
    static var previews: some View {
        TestMainView()
    }
}
