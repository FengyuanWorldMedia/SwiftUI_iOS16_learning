//
//  StudentView.swift
//  TestBottomsheet
//
//  Created by 苏州丰源天下传媒 on 2022/11/25.
//

import SwiftUI

struct StudentView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 20) {
            HStack {
                Image(systemName: "person.crop.circle.fill.badge.checkmark")
                    .foregroundColor(.green)
                Text("我是丰源学员一号")
            }
            HStack {
                Image(systemName: "command")
                    .foregroundColor(.green)
                Text("SwiftUI 成绩 100 分")
            }
            HStack {
                Image(systemName: "ant")
                    .foregroundColor(.green)
                Text("勤奋的小蚂蚁")
            }
        }
    }
}

struct StudentView_Previews: PreviewProvider {
    static var previews: some View {
        StudentView()
    }
}
