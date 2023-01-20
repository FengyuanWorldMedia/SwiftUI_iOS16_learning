//
//  ContentView.swift
//  TestTextAnimation
//
//  Created by 苏州丰源天下传媒 on 2022/11/30.
//


import SwiftUI

struct TestMainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    TestTextAnimationView1()
                } label: {
                    Label("TestTextAnimationView1", systemImage: "\(1).circle")
                }
                NavigationLink {
                    TestTextAnimationView2()
                } label: {
                    Label("TestTextAnimationView2", systemImage: "\(2).circle")
                }
                
                Spacer()
            }
           .navigationTitle("TestTextAnimationView")
       }
    }
}

struct TestMainView_Previews: PreviewProvider {
    static var previews: some View {
        TestMainView()
    }
}
