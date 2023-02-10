//
//  TestShareLinkView1.swift
//  TestShareLink
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

struct TestShareLinkView1: View {
    
    let link = URL(string: "https://www.cctv.com")!
 
    var body: some View {
        VStack(spacing: 20) {
            ShareLink(item: link)
                .fontWeight(.bold)
            ShareLink("电视天天看", item: link)
                .foregroundColor(.brown)
            ShareLink(item: link) {
                Label("电视天天看", systemImage: "play.rectangle.fill")
                    .foregroundColor(.red)
            }
        }
    }
}

struct TestShareLinkView1_Previews: PreviewProvider {
    static var previews: some View {
        TestShareLinkView1()
    }
}
