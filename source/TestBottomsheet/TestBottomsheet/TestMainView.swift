//
//  ContentView.swift
//  TestBottomsheet
//
//  Created by 苏州丰源天下传媒 on 2022/11/25.
//

import SwiftUI

struct TestMainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    TestBottomsheetView1()
                } label: {
                    Label("TestBottomsheetView1", systemImage: "\(1).circle")
                }
                NavigationLink {
                    TestBottomsheetView2()
                } label: {
                    Label("TestBottomsheetView2", systemImage: "\(2).circle")
                }
                NavigationLink {
                    TestBottomsheetView3()
                } label: {
                    Label("TestBottomsheetView3", systemImage: "\(3).circle")
                }
                NavigationLink {
                    TestBottomsheetView4()
                } label: {
                    Label("TestBottomsheetView4", systemImage: "\(4).circle")
                }
                NavigationLink {
                    TestBottomsheetView5()
                } label: {
                    Label("TestBottomsheetView5", systemImage: "\(5).circle")
                }
                Spacer()
            }
           .navigationTitle("TestBottomsheet")
       }
    }

}

struct TestMainView_Previews: PreviewProvider {
    static var previews: some View {
        TestMainView()
    }
}
