//
//  TestDismissesKeyboardView1.swift
//  TestDismissesKeyboard
//
//  Created by 苏州丰源天下传媒 on 2022/11/28.
//

import SwiftUI

// immediately: Dismiss the keyboard as soon as scrolling starts.
struct TestDismissesKeyboardView1: View {
    @State private var name = ""
    @State private var desc = ""

    var body: some View {
        ScrollView {
            VStack {
                TextField("姓名:", text: $name)
                    .textFieldStyle(.roundedBorder)
                TextEditor(text: $desc)
                    .frame(height: 300)
                    .border(.quaternary, width: 1)
            }
            .padding(.horizontal)
            .background(.cyan.gradient)
        }
        .scrollDismissesKeyboard(.immediately)
    }
}

struct TestDismissesKeyboardView1_Previews: PreviewProvider {
    static var previews: some View {
        TestDismissesKeyboardView1()
    }
}
