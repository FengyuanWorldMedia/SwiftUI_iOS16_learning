//
//  TestMainView.swift
//  TestGrid
//
//  Created by 苏州丰源天下传媒 on 2022/11/25.
//

import SwiftUI

struct TestMainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    TestGridView1()
                } label: {
                    Label("TestGridView1", systemImage: "\(1).circle")
                }
                NavigationLink {
                    TestGridView2()
                } label: {
                    Label("TestGridView2", systemImage: "\(2).circle")
                }
                NavigationLink {
                    TestGridView3()
                } label: {
                    Label("TestGridView3", systemImage: "\(3).circle")
                } 
                Spacer()
            }
           .navigationTitle("TestGridView")
       }
    }

}

struct TestMainView_Previews: PreviewProvider {
    static var previews: some View {
        TestMainView()
    }
}
