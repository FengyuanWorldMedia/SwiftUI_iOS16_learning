//
//  TestBottomsheetView5.swift
//  TestBottomsheet
//
//  Created by 苏州丰源天下传媒 on 2022/11/25.
//

import SwiftUI

struct TestBottomsheetView5: View {
    
    @State private var showingStudent = false
    @State private var settingsDetent = PresentationDetent.medium
    
    var body: some View {
       Button("显示学员信息") {
           showingStudent.toggle()
       }
       .sheet(isPresented: $showingStudent) {
           StudentView()
               .presentationDetents([.medium, .large], selection: $settingsDetent)
       }.onChange(of: self.settingsDetent, perform: { _ in
           print(self.settingsDetent)
       })
   }
}

struct TestBottomsheetView5_Previews: PreviewProvider {
    static var previews: some View {
        TestBottomsheetView5()
    }
}
