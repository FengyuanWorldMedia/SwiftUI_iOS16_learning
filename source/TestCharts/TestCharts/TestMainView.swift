//
//  ContentView.swift
//  TestCharts
//
//  Created by 苏州丰源天下传媒 on 2022/12/6.
//

import SwiftUI

struct TestMainView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    TestChartsView1()
                } label: {
                    Label("TestChartsView1", systemImage: "\(1).circle")
                }
                NavigationLink {
                    TestChartsView2()
                } label: {
                    Label("TestChartsView2", systemImage: "\(2).circle")
                }
                NavigationLink {
                    TestChartsView3()
                } label: {
                    Label("TestChartsView3", systemImage: "\(3).circle")
                }
                NavigationLink {
                    TestChartsView4()
                } label: {
                    Label("TestChartsView4", systemImage: "\(4).circle")
                }
                NavigationLink {
                    TestChartsView5()
                } label: {
                    Label("TestChartsView5", systemImage: "\(5).circle")
                }
                NavigationLink {
                    TestChartsView6()
                } label: {
                    Label("TestChartsView6", systemImage: "\(6).circle")
                }
                Spacer()
            }
           .navigationTitle("TestChartsView")
       }
    }

}

struct TestMainView_Previews: PreviewProvider {
    static var previews: some View {
        TestMainView()
    }
}
