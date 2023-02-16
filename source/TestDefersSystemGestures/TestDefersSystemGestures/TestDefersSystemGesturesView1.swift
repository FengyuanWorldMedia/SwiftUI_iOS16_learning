//
//  TestDefersSystemGesturesView1.swift
//  TestDefersSystemGestures
//
//  Created by 苏州丰源天下传媒 on 2022/12/4.
//

import SwiftUI

struct TestDefersSystemGesturesView1: View {
    @State private var input = 0.0

    var body: some View {

       Text("手势纵向距离: \(input)")
           .frame(maxWidth: .infinity, maxHeight: .infinity)
           .contentShape(Rectangle())
           .gesture(
               DragGesture().onChanged { value in
                   input = value.location.y - value.startLocation.y
               }
           )
           .background(.cyan.gradient)
           
    }
}

struct TestDefersSystemGesturesView1_Previews: PreviewProvider {
    static var previews: some View {
        TestDefersSystemGesturesView1()
    }
}
