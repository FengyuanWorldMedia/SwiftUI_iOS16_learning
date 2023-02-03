//
//  ContentView.swift
//  TestButtonAlert
//
//  Created by 苏州丰源天下传媒 on 2022/12/4.
//

import SwiftUI

struct ContentView: View {
    
      @State private var course: String = ""
      @State private var course2: String = ""
      @State private var showAlert: Bool = false
      
      var body: some View {
          
          Form {
              Image("cover")
                .resizable()
                 .frame(width: 300, height: 150)
              
              Button("输入我最新欢的课程") {
                  self.course = ""
                  self.showAlert = true
              }
//              .alert("输入我最喜欢的课程", isPresented: $showAlert) {
//                  TextField("课程名", text: $course)
//              }
              .alert("输入我最喜欢的课程", isPresented: $showAlert,
                 actions: {
                      TextField("课程名1", text: $course)
                      TextField("课程名2", text: $course2)
                      Button("确认") {
                          print(course)
                          print(course2)
                      }
                      Button("取消", role: .cancel, action: {})
                 },
                 message: {
                    Text("欢迎选修我们的课程")
                }
             )
          }
          
      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
