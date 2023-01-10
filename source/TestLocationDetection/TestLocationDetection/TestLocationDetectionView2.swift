//
//  TestLocationDetectionView2.swift
//  TestLocationDetection
//
//  Created by 苏州丰源天下传媒 on 2022/11/26.
//

import SwiftUI

struct TestLocationDetectionView2: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    GeometryRectangle(color: Color.pink)
                    GeometryRectangle(color: Color.red)
                    GeometryRectangle(color: Color.blue)
                    GeometryRectangle(color: Color.pink)
                    GeometryRectangle(color: Color.red)
                    GeometryRectangle(color: Color.blue)
                    GeometryRectangle(color: Color.pink)
                    GeometryRectangle(color: Color.red)
                    GeometryRectangle(color: Color.blue)
                }
            }
            .border(Color.green, width: 1)
            Spacer()
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct GeometryRectangle: View {
    @State var fontBold : Bool = false
    var color: Color
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Button(action: {
                    print(geometry.frame(in: .global).minX)
                    print(geometry.frame(in: .global).minY)
                }) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(fontBold ? Color.black : color)
                    .overlay(
                        VStack {
                            Text("X: \(Int(geometry.frame(in: .global).origin.x)) Y: \(Int(geometry.frame(in: .global).origin.y)) width: \(Int(geometry.frame(in: .global).width)) height: \(Int(geometry.frame(in: .global).height))")
                                .foregroundColor(.white)
                            Text("size: \(geometry.size.debugDescription)")
                                .fontWeight(fontBold ? .heavy : .light)
                                .foregroundColor(fontBold ? .white : .gray)
                })}
            }.onChange(of: geometry.frame(in: .global).minY, perform: {
                value in
                if value >= 100 && value <= 200 {
                    fontBold = true
                } else {
                    fontBold = false
                }
            })
        }.frame(height: 100)
    }
}


struct TestLocationDetectionView2_Previews: PreviewProvider {
    static var previews: some View {
        TestLocationDetectionView2()
    }
}
