//
//  AssetSummaryData.swift
//  MyAssets
//
//  Created by Isaac Kim on 6/8/22.
//

import SwiftUI

class AssetSummaryData: ObservableObject {
    @Published var assets: [Asset] = load("assets.json")
    
}

func load<T: Decodable> (_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Can't find the \(filename)")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Can't find the \(filename)")
    }
    
    do {
        let decoder = JSONDecoder()
        
        return try  decoder.decode(T.self, from: data)
    } catch {
        fatalError("Can't pass the \(filename) to the \(T.self)")
    }
}
