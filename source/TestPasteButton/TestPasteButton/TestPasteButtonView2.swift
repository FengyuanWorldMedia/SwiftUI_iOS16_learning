//
//  TestPasteButtonView2.swift
//  TestPasteButton
//
//  Created by 苏州丰源天下传媒 on 2022/12/4.
//

import SwiftUI

struct TestPasteButtonView2: View {
  
  @State private var userPastedImageObj: UIImage?
       
  var body: some View {
       Form {
           PasteButton(supportedContentTypes: [.image]) { providers in
               if let firstProvider = providers.first {
                   _ = firstProvider.loadDataRepresentation(for: .image) { data, error in
                       if let data, let imageObj = UIImage(data: data) {
                           self.userPastedImageObj = imageObj
                       }
                   }
               }
           }
           .buttonBorderShape(.capsule)
           
           if let userPastedImageObj {
               Image(uiImage: userPastedImageObj)
                   .resizable()
                   .scaledToFit()
           }
       }
   }
}

struct TestPasteButtonView2_Previews: PreviewProvider {
    static var previews: some View {
        TestPasteButtonView2()
    }
}
