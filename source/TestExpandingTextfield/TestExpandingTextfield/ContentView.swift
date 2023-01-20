//
//  ContentView.swift
//  TestExpandingTextfield
//
//  Created by 苏州丰源天下传媒 on 2022/12/3.
//

import SwiftUI

struct ContentView: View {
    @State private var desc = ""
    
    var body: some View {
        VStack {
            TextField("请输入简介", text: $desc, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .lineLimit(...5)
                .onSubmit {
                    
                }
                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
