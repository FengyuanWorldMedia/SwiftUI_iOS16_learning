//
//  ContentView.swift
//  TestPasteButton
//
//  Created by 苏州丰源天下传媒 on 2022/12/4.
//

import SwiftUI

struct TestMainView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    TestPasteButtonView1()
                } label: {
                    Label("TestAnyLayoutView1", systemImage: "\(1).circle")
                }
                NavigationLink {
                    TestPasteButtonView2()
                } label: {
                    Label("TestPasteButtonView2", systemImage: "\(2).circle")
                } 
                Spacer()
            }
           .navigationTitle("TestPasteButtonView")
       }
    }

}

struct TestMainView_Previews: PreviewProvider {
    static var previews: some View {
        TestMainView()
    }
}
