//
//  TestMultiDatePickerView1.swift
//  TestMultiDatePicker
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

struct TestMultiDatePickerView1: View {
    @State var dates: Set<DateComponents> = []

    var body: some View {
        VStack {
            MultiDatePicker("我的课程表",
                            selection: $dates)
            .frame(width: 300, height: 300)
            
            Button("选中日期",action: {
                for e in dates {
                    print(e.description)
                }
            })
        }
       
    }
}

struct TestMultiDatePickerView1_Previews: PreviewProvider {
    static var previews: some View {
        TestMultiDatePickerView1()
    }
}
