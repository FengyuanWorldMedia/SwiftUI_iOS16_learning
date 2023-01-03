//
//  TestBottomsheetView2.swift
//  TestBottomsheet
//
//  Created by 苏州丰源天下传媒 on 2022/11/25.
//

import SwiftUI

struct TestBottomsheetView2: View {
    
    @State private var showingStudent = false

    var body: some View {
       Button("显示学员信息") {
           showingStudent.toggle()
       }
       .sheet(isPresented: $showingStudent) {
           StudentView()
               .presentationDetents([.height(200),.height(300)])
       }
    }
}

struct TestBottomsheetView2_Previews: PreviewProvider {
    static var previews: some View {
        TestBottomsheetView2()
    }
}
