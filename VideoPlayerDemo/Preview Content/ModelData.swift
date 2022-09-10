//
//  ModelData.swift
//  VideoPlayerDemo
//
//  Created by kittawat phuangsombat on 2022/9/10.
//

import Foundation

var previewVideo: Video = load("videoData.json")

func load<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("Couldn't find \(fileName) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(fileName) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't load \(fileName) as \(T.self):n\(error)")
    }
}
