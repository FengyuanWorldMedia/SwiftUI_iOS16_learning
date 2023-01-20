//
//  TestTextAnimationView1.swift
//  TestTextAnimation
//
//  Created by 苏州丰源天下传媒 on 2022/11/30.
//

import SwiftUI

// Animate Font Properties in SwiftUI 4 and iOS16
struct TestTextAnimationView1: View {
    @State var opacity = 0.0
    @State var blurValue: Double = 10
    @State var isBold: Bool = false
    
    var body: some View {
        
        VStack(spacing: 30) {
            Button(action: {
                withAnimation(.easeInOut(duration: 0.5)) {
                    opacity = 1
                    blurValue = 0
                    isBold = true
                }
            }, label: {
                Text("显示").foregroundColor(.white)
            })
            
            Button(action: {
                withAnimation(.easeInOut(duration: 0.5)) {
                    opacity = 0
                    blurValue = 10
                    isBold = false
                }
            }, label: {
                Text("消失").foregroundColor(.white)
            })
            
            Text("丰")
                .font(.system(size: 100))
                .opacity(opacity)
                .blur(radius: blurValue)
                .border(.red, width: 1)
                .fontWeight(isBold ? .bold : .regular )
            Text("源")
                .font(.system(size: 100))
                .opacity(opacity)
                .blur(radius: blurValue)
                .border(.red, width: 1)
                .fontWeight(isBold ? .bold : .regular )
            
        }.font(.largeTitle)
            .frame(width: UIScreen.main.bounds.width,
                   height: UIScreen.main.bounds.height)
            .background(.pink.gradient)
    
    }
}

struct TestTextAnimationView1_Previews: PreviewProvider {
    static var previews: some View {
        TestTextAnimationView1()
    }
}
