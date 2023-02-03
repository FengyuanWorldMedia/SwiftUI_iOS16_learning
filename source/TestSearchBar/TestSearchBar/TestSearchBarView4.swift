//
//  TestSearchBarView4.swift
//  TestSearchBar
//
//  Created by 苏州丰源天下传媒 on 2022/11/27.
//

import SwiftUI

struct JonInfoStruct: Identifiable, Codable {
    let id: Int
    var job: String
    var desc: String
}

enum SearchScope: String, CaseIterable {
    case it = "it"
    case market = "market"
}

struct TestSearchBarView4: View {
    
  @State private var messages = [JonInfoStruct]()
  @State private var searchTerm = ""
  @State private var searchScope = SearchScope.it
  
  var body: some View {
      NavigationStack {
          List {
              ForEach(results) { jobInfo in
                  NavigationLink(destination: Text(jobInfo.desc)) {
                      VStack(alignment: .leading) {
                          Text(jobInfo.job)
                              .font(.title3)
                              .foregroundColor(.gray)
                          Text(jobInfo.desc)
                              .foregroundColor(.green)
                      }
                  }
              }
          }
          .searchable(text: $searchTerm)
          .searchScopes($searchScope)  {
              ForEach(SearchScope.allCases, id: \.self) { scope in
                Text(scope.rawValue)
            }
          }
          .navigationTitle("找工作")
      }
      .onSubmit(of: .search, runSearch)
      .onChange(of: searchScope) { _ in runSearch() }
      .onAppear() {
          runSearch()
      }
  }

  var results: [JonInfoStruct] {
      if searchTerm.isEmpty {
          return messages
      } else {
          return messages.filter { $0.desc.localizedCaseInsensitiveContains(searchTerm) }
      }
  }

  // Postman mock server:
  // https://be5de4c0-5749-4172-9c49-3b8280cd18e9.mock.pstmn.io/webapi/it
  // https://be5de4c0-5749-4172-9c49-3b8280cd18e9.mock.pstmn.io/webapi/market
  func runSearch() {
      Task {
          let host = "https://be5de4c0-5749-4172-9c49-3b8280cd18e9.mock.pstmn.io"
          let requestUrl = "\(host)/webapi/\(searchScope.rawValue)"
          guard let url = URL(string: requestUrl) else { return }
          let (data, _) = try await URLSession.shared.data(from: url)
          messages = try JSONDecoder().decode([JonInfoStruct].self, from: data)
      }
  }
}

struct TestSearchBarView4_Previews: PreviewProvider {
    static var previews: some View {
        TestSearchBarView4()
    }
}
