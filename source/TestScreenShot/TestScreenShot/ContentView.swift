//
//  ContentView.swift
//  TestScreenShot
//
//  Created by 苏州丰源天下传媒 on 2022/12/4.
//

import SwiftUI
import UIKit
import WebKit


struct ContentView: View {
    
      @State private var currentProgressValue: Double = 0
      @State private var renderedImage: UIImage?
    // ImageRenderer 对UIKit 的支持不是很好！！
     var screenShotView: some View {
     BrowserViewControllerWrapper()
          .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 300)
     }
    
//    var screenShotView: some View {
//        VStack {
//            Text("学习是最重要的事情")
//                .foregroundColor(.green)
//        }
//        .font(.largeTitle)
//        .border(.red, width: 2)
//        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 300)
//    }
    
    var body: some View {
        ScrollView {
            VStack {
                screenShotView
                Button("对View进行截图") {
                    let renderer = ImageRenderer(content: screenShotView)
                    if let image = renderer.uiImage {
                        self.renderedImage = image
                    }
                }
                if let renderedImage {
                    Image(uiImage: renderedImage)
                        .resizable()
                        .frame(width: 100,height: 150)
                        .border(.red, width: 2.0)
                        .scaledToFit()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct BrowserViewControllerWrapper : UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> BrowserViewController {
        return BrowserViewController()
    }
    func updateUIViewController(_ uiViewController: BrowserViewController, context: Context) {
    }
}

class BrowserViewController: UIViewController, WKUIDelegate {
    var webView: WKWebView!
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string:"https://www.apple.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
