//
//  TestShareLinkView3.swift
//  TestShareLink
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

struct Photo: Transferable {
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation(exporting: \.image)
    }

    public var image: Image = Image("video_play")
    public var caption: String = "电视天天看"
}

struct TestShareLinkView3: View {
    let photo: Photo = Photo()
    
    var body: some View {
        VStack(spacing: 20) {
            photo.image
                .resizable()
                .frame(width: 150, height: 130)
                .toolbar {
                    ShareLink(
                        item: photo,
                        preview: SharePreview(
                            photo.caption,
                            image: photo.image))
                }
        }
    }
}

struct TestShareLinkView3_Previews: PreviewProvider {
    static var previews: some View {
        TestShareLinkView3()
    }
}
