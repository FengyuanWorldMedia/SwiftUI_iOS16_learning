//
//  TestShareLinkView2.swift
//  TestShareLink
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

/// 想在共享中添加更多内容
struct TestShareLinkView2: View {
    let link = URL(string: "https://www.cctv.com")!
    var body: some View {
        VStack(spacing: 20) {
            ShareLink(item: link, message: Text("来自丰源天下传媒的共享"))
                .fontWeight(.bold)
        }
    }
}

struct TestShareLinkView2_Previews: PreviewProvider {
    static var previews: some View {
        TestShareLinkView2()
    }
}
