//
//  TestMainView.swift
//  TestSearchBar
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI
struct TestMainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    TestSearchBarView1()
                } label: {
                    Label("TestSearchBarView1", systemImage: "\(1).circle")
                }
                NavigationLink {
                    TestSearchBarView2()
                } label: {
                    Label("TestSearchBarView2", systemImage: "\(2).circle")
                }
                NavigationLink {
                    TestSearchBarView3()
                } label: {
                    Label("TestSearchBarView3", systemImage: "\(3).circle")
                }
                NavigationLink {
                    TestSearchBarView4()
                } label: {
                    Label("TestSearchBarView4", systemImage: "\(4).circle")
                }
                Spacer()
            }
           .navigationTitle("TestSearchBarView")
       }
    }

}

struct TestMainView_Previews: PreviewProvider {
    static var previews: some View {
        TestMainView()
    }
}
