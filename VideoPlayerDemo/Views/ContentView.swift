//
//  ContentView.swift
//  VideoPlayerDemo
//
//  Created by kittawat phuangsombat on 2022/9/10.
//

import SwiftUI

struct ContentView: View {
    @StateObject var videoManager = VideoManager()
    var columns = [GridItem(.adaptive(minimum: 160))]
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    ForEach(Query.allCases,id: \.self) {
                        searchQuery in
                        QueryTag( query: searchQuery, isSeletected: videoManager.selectedQuery == searchQuery)
                            .onTapGesture {
                                videoManager.selectedQuery = searchQuery
                            }
                    }
                }
                
                ScrollView {
                    if videoManager.videos.isEmpty {
                        ProgressView()
                    } else {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(videoManager.videos, id: \.id) { video in
                                NavigationLink {
                                    VideoView(video: video)
                                }label: {
                                    VideoCard(video: video)
                                }
                            }
                        }
                        .padding()
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .background(Color("AccentColor"))
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
