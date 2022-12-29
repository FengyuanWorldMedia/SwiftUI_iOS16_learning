//
//  TestMainView.swift
//  TestAnyLayout
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

struct TestMainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    TestAnyLayoutView1()
                } label: {
                    Label("TestAnyLayoutView1", systemImage: "\(1).circle")
                }
                NavigationLink {
                    TestAnyLayoutView2()
                } label: {
                    Label("TestAnyLayoutView2", systemImage: "\(2).circle")
                }
                NavigationLink {
                    TestAnyLayoutView3()
                } label: {
                    Label("TestAnyLayoutView3", systemImage: "\(3).circle")
                }
                Spacer()
            }
           .navigationTitle("TestAnyLayoutView")
       }
    }
}

struct TestMainView_Previews: PreviewProvider {
    static var previews: some View {
        TestMainView()
    }
}
