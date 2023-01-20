//
//  TestDismissesKeyboardView3.swift
//  TestDismissesKeyboard
//
//  Created by 苏州丰源天下传媒 on 2022/11/28.
//

import SwiftUI

// interactively: Enable people to interactively dismiss the keyboard as part of the scroll operation.
struct TestDismissesKeyboardView3: View {
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
        .scrollDismissesKeyboard(.interactively)
    }
}

struct TestDismissesKeyboardView3_Previews: PreviewProvider {
    static var previews: some View {
        TestDismissesKeyboardView3()
    }
}
