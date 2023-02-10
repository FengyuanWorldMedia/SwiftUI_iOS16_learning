//
//  FocusStateView.swift
//  TestRenameButton
//
//  Created by 苏州丰源天下传媒 on 2022/12/4.
//

import SwiftUI

struct FocusStateView: View {
    
    enum FocusedField {
         case username, password
     }

     @FocusState private var focusedField: FocusedField?
     @State private var username = "丰源天下传媒"
     @State private var password = "123456"

     var body: some View {
         VStack {
             TextField("输入用户名", text: $username)
                 .focused($focusedField, equals: .username)
             
             SecureField("输入密码", text: $password)
                 .focused($focusedField, equals: .password)
         }
         .onSubmit {
             if focusedField == .username {
                 focusedField = .password
             } else {
                 focusedField = nil
             }
         }
     }
}

struct FocusStateView_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateView()
    }
}
