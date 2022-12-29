//
//  TestAnyLayoutView2.swift
//  TestAnyLayout
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

struct TestAnyLayoutView2: View {
     
     @Environment(\.dynamicTypeSize) var dynamicTypeSize

     var body: some View {
       let layout = dynamicTypeSize <= .medium ? AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())
       layout {
           Text("SwiftUI 教程")
           Text("SwiftUI 新特性")
       }
    }
}

struct TestAnyLayoutView2_Previews: PreviewProvider {
    static var previews: some View {
        TestAnyLayoutView2()
    }
}
