//
//  TestGradientView3.swift
//  TestGradient
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

struct TestGradientView3: View {
    
    private let BgGradient = Gradient(colors: [.green, .orange])
    
    private let BgGradient2 =  Gradient(stops: [
        Gradient.Stop(color: .brown, location: 0), // 1
        Gradient.Stop(color: .cyan, location: 0.25), // 0.25
        Gradient.Stop(color: .mint, location: 1.0), // 1
    ])
    
    var body: some View {
        VStack(spacing: 30) {
            
            VStack {
                
            }.frame(width: 300, height: 150)
            .background(
                    RoundedRectangle(cornerRadius: 10).fill(
                    LinearGradient(gradient: self.BgGradient,
                                   startPoint: .top,
                                   endPoint: .bottom)
            ))
            
            VStack {
                
            }.frame(width: 300, height: 150)
            .background(
                    RoundedRectangle(cornerRadius: 10).fill(
                    LinearGradient(gradient: self.BgGradient2,
                                   startPoint: .top,
                                   endPoint: .bottom)
            ))
            
        }.frame(width: UIScreen.main.bounds.width,
                height: UIScreen.main.bounds.height)
         .background(Color.black.gradient)
    }
}

struct TestGradientView3_Previews: PreviewProvider {
    static var previews: some View {
        TestGradientView3()
    }
}
