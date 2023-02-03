//
//  ContentView.swift
//  TestRequestReview
//
//  Created by 丰源天下传媒 on 2022/11/28.
//

import SwiftUI
import StoreKit

struct ContentView: View {
    @Environment(\.requestReview) var requestReview
    var body: some View {
        VStack {
            Button {
                requestReview()
            } label: {
                Text("用户评价")
                    .foregroundColor(.red)
            }
        }
        .environment(\.locale, Locale(identifier: "zh-Hant"))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.locale, Locale(identifier: "zh-Hant"))
    }
}
