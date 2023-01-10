//
//  TestMainView.swift
//  TestLocationDetection
//
//  Created by 苏州丰源天下传媒 on 2022/11/26.
//

import SwiftUI

struct TestMainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    TestLocationDetectionView1()
                } label: {
                    Label("TestLocationDetectionView1", systemImage: "\(1).circle")
                }
                NavigationLink {
                    TestLocationDetectionView2()
                } label: {
                    Label("TestLocationDetectionView2", systemImage: "\(2).circle")
                } 
                Spacer()
            }
           .navigationTitle("TestLocationDetectionView")
       }
    }
}

struct TestMainView_Previews: PreviewProvider {
    static var previews: some View {
        TestMainView()
    }
}
