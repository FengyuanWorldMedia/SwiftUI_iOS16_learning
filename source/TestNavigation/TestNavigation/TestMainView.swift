//
//  TestMainView.swift
//  TestNavigation
//
//  Created by 苏州丰源天下传媒 on 2022/11/23.
//

import SwiftUI

struct TestMainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    NavigationStackTest1()
                } label: {
                    Label("NavigationStackTest1", systemImage: "\(1).circle")
                }
                NavigationLink {
                    NavigationStackTest2()
                } label: {
                    Label("NavigationStackTest2", systemImage: "\(2).circle")
                }
                NavigationLink {
                    NavigationStackTest3()
                } label: {
                    Label("NavigationStackTest3", systemImage: "\(3).circle")
                }
                NavigationLink {
                    NavigationStackTest4()
                } label: {
                    Label("NavigationStackTest4", systemImage: "\(4).circle")
                }
                Spacer()
            } 
           .navigationTitle("Navigation")
       }
    }
}

struct TestMainView_Previews: PreviewProvider {
    static var previews: some View {
        TestMainView()
    }
}
