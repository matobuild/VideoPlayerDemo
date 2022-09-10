//
//  ContentView.swift
//  VideoPlayerDemo
//
//  Created by kittawat phuangsombat on 2022/9/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                ForEach(Query.allCases,id: \.self) {
                    searchQuery in
                    QueryTag( query: searchQuery, isSeletected: false)
                }
            }
        }
        .background(Color("AccentColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
