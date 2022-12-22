//
//  TestMainView.swift
//  TestGradient
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

struct TestMainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    TestGradientView1()
                } label: {
                    Label("TestGradientView1", systemImage: "\(1).circle")
                }
                NavigationLink {
                    TestGradientView2()
                } label: {
                    Label("TestGradientView2", systemImage: "\(2).circle")
                }
                NavigationLink {
                    TestGradientView3()
                } label: {
                    Label("TestGradientView3", systemImage: "\(3).circle")
                }
                Spacer()
            }
           .navigationTitle("TestGradientView")
       }
    }

}

struct TestMainView_Previews: PreviewProvider {
    static var previews: some View {
        TestMainView()
    }
}
