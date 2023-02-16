//
//  TestDefersSystemGesturesApp.swift
//  TestDefersSystemGestures
//
//  Created by 苏州丰源天下传媒 on 2022/12/4.
//

import SwiftUI

@main
struct TestDefersSystemGesturesApp: App {
    var body: some Scene {
        WindowGroup {
            TestMainView()
                .defersSystemGestures(on: .vertical)
        }
    }
}
