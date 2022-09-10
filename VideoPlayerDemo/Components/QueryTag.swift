//
//  QueryTag.swift
//  VideoPlayerDemo
//
//  Created by kittawat phuangsombat on 2022/9/10.
//

import SwiftUI

struct QueryTag: View {
    var query: Query
    var isSeletected: Bool
    
    var body: some View {
        Text(query.rawValue)
            .font(.caption)
            .bold()
            .foregroundColor(isSeletected ? .black: .gray)
            .padding(10)
            .background(.thinMaterial)
            .cornerRadius(10)
    }
}

struct QueryTag_Previews: PreviewProvider {
    static var previews: some View {
        QueryTag(query: Query.food, isSeletected: true)
    }
}
