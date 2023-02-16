//
//  ContentView.swift
//  TestHideOverlay
//
//  Created by 苏州丰源天下传媒 on 2022/11/29.
//

import SwiftUI

struct ContentView: View {
    
    @State var hideFlg = false
    
    var body: some View {
        VStack (spacing: 30) { 
            Button("切换iOS Home Indicator", action: {
                hideFlg.toggle()
                print(hideFlg)
            })
            .background(.orange)
            .border(.mint, width: 1)
            
            Text("persistentSystemOverlays 测试")
                .persistentSystemOverlays(hideFlg ? .hidden : .visible)
                
        }
        .font(.title)
        .foregroundColor(.white)
        .frame(width: UIScreen.main.bounds.width,
               height:  UIScreen.main.bounds.height)
        .background(Color.cyan.gradient)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
