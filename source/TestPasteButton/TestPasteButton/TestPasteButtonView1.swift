//
//  TestPasteButtonView1.swift
//  TestPasteButton
//
//  Created by 苏州丰源天下传媒 on 2022/12/4.
//

import SwiftUI

struct TestPasteButtonView1: View {
    @State private var pastedText: String = ""

    var body: some View {
        HStack {
            PasteButton(payloadType: String.self) { strings in
                pastedText = strings[0]
            }
            Divider()
            Text(pastedText)
            Spacer()
        }
    }
}

struct TestPasteButtonView1_Previews: PreviewProvider {
    static var previews: some View {
        TestPasteButtonView1()
    }
}
