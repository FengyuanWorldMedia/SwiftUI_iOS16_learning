//
//  TestBottomsheetView3.swift
//  TestBottomsheet
//
//  Created by 苏州丰源天下传媒 on 2022/11/25.
//

import SwiftUI

struct TestBottomsheetView3: View {
    @State private var showingStudent = false

    let heights = stride(from: 0.2, through: 1.0, by: 0.1).map {                            PresentationDetent.fraction($0)
    }

    var body: some View {
       Button("显示学员信息") {
           showingStudent.toggle()
       }
       .sheet(isPresented: $showingStudent) {
           StudentView()
               .presentationDetents(Set(heights))
       }
   }
}

struct TestBottomsheetView3_Previews: PreviewProvider {
    static var previews: some View {
        TestBottomsheetView3()
    }
}
