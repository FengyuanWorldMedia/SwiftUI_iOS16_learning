//
//  TestMainView.swift
//  TestDefersSystemGestures
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

struct TestMainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    TestDefersSystemGesturesView1()
                } label: {
                    Label("TestDefersSystemGesturesView1", systemImage: "\(1).circle")
                }
                Spacer()
            }
           .navigationTitle("TestDefersSystemGesturesView")
       }
    }
}

struct TestMainView_Previews: PreviewProvider {
    static var previews: some View {
        TestMainView()
    }
}
