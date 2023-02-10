//
//  ContentView.swift
//  TestRenameButton
//
//  Created by 苏州丰源天下传媒 on 2022/12/4.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            RowView()

            Text("测试文本")
                .renameAction {
                    // 不会被调用
                    print("测试文本 RenameButton clicked")
                }
            
            RenameButton()
                .font(.title3)
//              .renameAction {
//                  print("Rename Logic")
//              }
        }
        .renameAction {
            print("RenameButton clicked")
        }
        .padding()
    
    }
}

struct RowView: View {
    @State private var text = ""
    @FocusState private var isFocused: Bool
    
    var body: some View {
        TextField(text: $text) {
            Text("输入一些文字吧...")
        }
        .focused($isFocused)
        .contextMenu {
            RenameButton()
        }
//        .renameAction {
//            print(" 获取焦点")
//            self.isFocused = true
//        }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
