//
//  TestDismissesKeyboardView2.swift
//  TestDismissesKeyboard
//
//  Created by 苏州丰源天下传媒 on 2022/11/28.
//

import SwiftUI

// never: Never dismiss the keyboard automatically as a result of scrolling.
struct TestDismissesKeyboardView2: View {
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
        .scrollDismissesKeyboard(.never)
    }
}

struct TestDismissesKeyboardView2_Previews: PreviewProvider {
    static var previews: some View {
        TestDismissesKeyboardView2()
    }
}
