//
//  TestMainView.swift
//  TestGauge
//
//  Created by 苏州丰源天下传媒 on 2022/12/4.
//

import SwiftUI

struct TestMainView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    TestGaugeView1()
                } label: {
                    Label("TestGaugeView1", systemImage: "\(1).circle")
                }
                NavigationLink {
                    TestGaugeView2()
                } label: {
                    Label("TestGaugeView2", systemImage: "\(2).circle")
                }
                NavigationLink {
                    TestGaugeView3()
                } label: {
                    Label("TestGaugeView3", systemImage: "\(3).circle")
                }
                Spacer()
            }
           .navigationTitle("TestGaugeView")
       }
    }

}

struct TestMainView_Previews: PreviewProvider {
    static var previews: some View {
        TestMainView()
    }
}
