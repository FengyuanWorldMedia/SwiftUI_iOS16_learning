//
//  TestMainView.swift
//  TestShareLink
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

struct TestMainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    TestShareLinkView1()
                } label: {
                    Label("TestShareLinkView1", systemImage: "\(1).circle")
                }
                NavigationLink {
                    TestShareLinkView2()
                } label: {
                    Label("TestShareLinkView2", systemImage: "\(2).circle")
                }
                NavigationLink {
                    TestShareLinkView3()
                } label: {
                    Label("TestShareLinkView3", systemImage: "\(3).circle")
                }
                NavigationLink {
                    TestShareLinkView4()
                } label: {
                    Label("TestShareLinkView4", systemImage: "\(4).circle")
                }
                Spacer()
            }
           .navigationTitle("TestShareLinkView")
       }
    }
}

struct TestMainView_Previews: PreviewProvider {
    static var previews: some View {
        TestMainView()
    }
}
