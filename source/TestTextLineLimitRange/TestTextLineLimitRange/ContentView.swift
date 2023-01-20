//
//  ContentView.swift
//  TestTextLineLimitRange
//
//  Created by 丰源天下传媒 on 2022/11/30.
//

import SwiftUI

struct ContentView: View {
    let txt = "苏州丰源天下传媒，是一家致力于知识传播，文化传播的一家公司。主要业务为IT知识，计算机理论等输出；同时为客户提供高质量的计算机技术咨询服务。本公司将陆续推出计算机编程技术和计算机基础理论相关课程。iOS开发相关课程: Swift语言基础，Swift进阶开发，SwifUI教程，Combine框架，iOS动画，Swift并发编程等教程。业务架构设计课程: 金融支付业务框架设计，交通调度设计系列教程等等。计算机理论相关课程: 递归编程系列教程，动态规划系列教程，图论等等。"
    
    let txt2 = "苏州丰源天下传媒"
    var body: some View {
        VStack(spacing: 30) {
            Text(txt)
                .frame(width: 300)
            Text(txt)
                .lineLimit(3...6)
                .frame(width: 300)
//            Text(txt2)
//                .lineLimit(3...6)
//                .frame(width: 300)
            Text(txt)
                .lineLimit(...3)
                .frame(width: 300)
            Text(txt)
                .lineLimit(4)
                .frame(width: 300)
        }
        .frame(width: UIScreen.main.bounds.width,
               height: UIScreen.main.bounds.height)
        .background(.black.gradient)
        .foregroundColor(.white)
        .font(.custom("Selima", size: 20))
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
