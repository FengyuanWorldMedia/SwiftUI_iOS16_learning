//
//  ContentView.swift
//  TestTextForegroundColor
//
//  Created by 苏州丰源天下传媒 on 2022/12/4.
//

import SwiftUI

struct ContentView: View {
    
    @State private var colorChanged = false
    @State private var colorChanged2 = false
        
    var body: some View {
        VStack {
            
            Button("点击改变字体颜色", action: {
                colorChanged.toggle()
                withAnimation(.easeInOut(duration: 3)) {
                    colorChanged2.toggle()
                }
            })
            
            Text("苏州丰源天下传媒")
                .font(.largeTitle.bold())
                .foregroundColor(colorChanged ? .red : .green)
            
            Text("苏州丰源天下传媒-动画")
                .font(.largeTitle.bold())
                .foregroundColor(colorChanged2 ? .red : .green)
        }
        .frame(width: UIScreen.main.bounds.width,
               height: UIScreen.main.bounds.height)
        .background(.black.gradient)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
