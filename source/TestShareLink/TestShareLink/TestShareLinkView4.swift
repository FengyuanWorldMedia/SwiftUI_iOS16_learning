//
//  TestShareLinkView4.swift
//  TestShareLink
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

// 使用 UIActivityViewController 
struct TestShareLinkView4: View {
    
    @State private var showShareSheet = false
    let link = URL(string: "https://www.cctv.com")!
    
    var body: some View {
       VStack(spacing: 20) {
           Button(action: {
               self.showShareSheet = true
           }) {
               Image("video_play")
                   .resizable()
                   .frame(width: 150, height: 130)
           }
       }.sheet(isPresented: $showShareSheet) {
           ShareSheet(activityItems: ["电视天天看", link as Any])
                // .frame(height: UIScreen.main.bounds.height/2)
                .presentationDetents([.fraction(0.6)])
       }
   }
}

struct ShareSheet: UIViewControllerRepresentable {
    typealias Callback = (_ activityType: UIActivity.ActivityType?,
                          _ completed: Bool,
                          _ returnedItems: [Any]?,
                          _ error: Error?) -> Void
    
    let activityItems: [Any]
    let applicationActivities: [UIActivity]? = nil
    let excludedActivityTypes: [UIActivity.ActivityType]? = nil
    let callback: Callback? = nil
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController( activityItems: activityItems, applicationActivities: applicationActivities)
        controller.view.frame.size.height = UIScreen.main.bounds.height/2
        controller.excludedActivityTypes = excludedActivityTypes
        controller.completionWithItemsHandler = callback
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        // nothing to do here
    }
}

struct TestShareLinkView4_Previews: PreviewProvider {
    static var previews: some View {
        TestShareLinkView4()
    }
}
