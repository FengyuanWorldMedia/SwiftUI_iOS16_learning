//
//  ContentView.swift
//  TestTextBoldAndItalic
//
//  Created by 苏州丰源天下传媒 on 2022/12/3.
//

import SwiftUI

struct ContentView: View {
    
    @State var isBold = false
    @State var isItalic = false
     
    var body: some View {
        
        VStack(spacing: 20) {
            Text("SwiftUI")
                .italic()
            
            Text("苏州丰源天下传媒")
                 .bold()
                 .italic()
                 
            
            Text("SwiftUI苏州丰源天下传媒")
                .bold(isBold)
                .italic(isItalic) /// 对汉字支持不是太好 😅
            
            Toggle("bold", isOn: $isBold)
            Toggle("italic", isOn: $isItalic)
        }
        .font(.title)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
