//
//  TestAnyLayoutView3.swift
//  TestAnyLayout
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

struct TestAnyLayoutView3: View {
    @State var orientationInfo = ""
    var body: some View {
        GeometryReader { geo in 
            VStack {
                Text(self.orientationInfo)
                    .foregroundColor(Color.black)
                    .fontWeight(.bold)
                Text("\(UIScreen.main.bounds.width)")
                    .foregroundColor(Color.black)
                    .fontWeight(.bold)
                Text("\(UIScreen.main.bounds.height)")
                    .foregroundColor(Color.black)
                    .fontWeight(.bold)
            }
            .ignoresSafeArea(.all)
            // .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.cyan.gradient)
            .onAppear(perform: {
                if geo.size.width > geo.size.height {
                    orientationInfo = "横屏"
                } else {
                    orientationInfo = "竖屏"
                }
            })
        }
        .onRotate { newOrientation in
            print("isLandscape : \(newOrientation.isLandscape)")
            orientationInfo = newOrientation.isLandscape ? "横屏" : "竖屏"
        }
    }
}

struct DeviceRotationViewModifier: ViewModifier {
    let action: (UIDeviceOrientation) -> Void
    func body(content: Content) -> some View {
        content
            .onAppear()
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
                action(UIDevice.current.orientation)
            }
    }
}
extension View {
    func onRotate(perform action: @escaping (UIDeviceOrientation) -> Void) -> some View {
          self.modifier(DeviceRotationViewModifier(action: action))
    }
}
struct TestAnyLayoutView3_Previews: PreviewProvider {
    static var previews: some View {
        TestAnyLayoutView3()
    }
}
