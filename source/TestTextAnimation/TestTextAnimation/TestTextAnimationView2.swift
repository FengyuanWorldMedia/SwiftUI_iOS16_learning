//
//  TestTextAnimationView2.swift
//  TestTextAnimation
//
//  Created by 苏州丰源天下传媒 on 2022/11/30.
//

import SwiftUI

struct TestTextAnimationView2: View {
    var body: some View {
          VStack(alignment: .leading) {
              Text("Blur Animation")
                  .fontWeight(.heavy)
                  .foregroundColor(.white)
                  .padding(.bottom, 10)
              VStack(alignment: .leading) {
                  BlurView(text: "苏州丰源天下传媒", textSize: 38, startTime: 0.41)
                  BlurView(text: "一口气学完SwiftUI新特性", textSize: 38, startTime: 1.85)
                  BlurView(text: "文本动画", textSize: 38, startTime: 3.76)
                  BlurView(text: "您学会了吗？", textSize: 24, startTime: 5.76)
                   .padding(.top, 30)
              }
          }.font(.largeTitle)
            .frame(width: UIScreen.main.bounds.width,
                   height: UIScreen.main.bounds.height)
            .background(.pink.gradient)
      }
}


struct BlurView: View {
    let characters: Array<String.Element>
    let baseTime: Double
    let textSize: Double
    @State var blurValue: Double = 10
    @State var opacity: Double = 0
    @State var isBold: Bool = false
    
    @State var processing: Double = 0

    init(text: String, textSize: Double, startTime: Double) {
        characters = Array(text)
        self.textSize = textSize
        baseTime = startTime
    }

    var body: some View {
        HStack(spacing: 1) {
            ForEach(Array(characters.enumerated()), id: \.element) { index, element in
                Text(String(element))
                    .font(.custom("HiraMinProN-W3", fixedSize: textSize))
                    .fontWeight(isBold ? .bold : .regular )
                    .blur(radius: blurValue)
                    .opacity(opacity)
                    .animation(.easeInOut.delay( Double(index) * 0.15 ), value: processing)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + baseTime) {
                blurValue = 0
                opacity = 1
                processing = 1
                isBold = true
            }
        }
    }
}

struct TestTextAnimationView2_Previews: PreviewProvider {
    static var previews: some View {
        TestTextAnimationView2()
    }
}
