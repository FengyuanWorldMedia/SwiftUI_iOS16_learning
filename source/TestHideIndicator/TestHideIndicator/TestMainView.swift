//
//  TestMainView.swift
//  TestHideIndicator
//
//  Created by 苏州丰源天下传媒 on 2022/11/28.
//

import SwiftUI

struct TestMainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    TestHideIndicatorView1()
                } label: {
                    Label("TestHideIndicatorView1-hidden", systemImage: "\(1).circle")
                }
                NavigationLink {
                    TestHideIndicatorView2()
                } label: {
                    Label("TestHideIndicatorView2-visible", systemImage: "\(2).circle")
                }
                NavigationLink {
                    TestHideIndicatorView3()
                } label: {
                    Label("TestHideIndicatorView3-never", systemImage: "\(3).circle")
                }
                NavigationLink {
                    TestHideIndicatorView4()
                } label: {
                    Label("TestHideIndicatorView4-automatic", systemImage: "\(4).circle")
                }
                Spacer()
            }
           .navigationTitle("TestHideIndicatorView")
       }
    }
}

struct TestMainView_Previews: PreviewProvider {
    static var previews: some View {
        TestMainView()
    }
}
