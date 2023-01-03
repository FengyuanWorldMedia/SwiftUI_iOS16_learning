//
//  TestMultiDatePickerView2.swift
//  TestMultiDatePicker
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

/// MultiDatePicker的范围和 语言
struct TestMultiDatePickerView2: View {
    @Environment(\.calendar) var calendar
    @State var dates: Set<DateComponents> = []

    var body: some View {
        VStack(spacing: 20.0) {
            MultiDatePicker("我的课程表",
                            selection: $dates,
                            in: Date.now...)
            .frame(width: 300, height: 300)

             Text(allSelectedDate)
        }
        .padding()
    }

    var allSelectedDate: String {
        var result = ""
        for e in dates {
            let d = calendar.date(from: e)!
            let formatted = d.formatted(date: .complete, time:.omitted)
            result = "\(result) \n \(formatted)"
        }
        return result
    }
}

struct TestMultiDatePickerView2_Previews: PreviewProvider {
    static var previews: some View {
        TestMultiDatePickerView2()
            .environment(\.calendar, Calendar(identifier:.iso8601))
            .environment(\.locale, Locale(identifier: "zh-Hans"))
    }
}

/// Language and Locale IDs
/// https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPInternational/LanguageandLocaleIDs/LanguageandLocaleIDs.html
