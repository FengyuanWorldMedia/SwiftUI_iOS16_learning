//
//  TestDismissesKeyboardView4.swift
//  TestDismissesKeyboard
//
//  Created by 苏州丰源天下传媒 on 2022/11/28.
//

import SwiftUI

// automatic：Determine the mode automatically based on the surrounding context.
struct TestDismissesKeyboardView4: View {
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
        .scrollDismissesKeyboard(.automatic)
    }
}

struct TestDismissesKeyboardView4_Previews: PreviewProvider {
    static var previews: some View {
        TestDismissesKeyboardView4()
    }
}
