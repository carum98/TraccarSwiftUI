//
//  StorageService.swift
//  TraccarSwiftUI
//
//  Created by Carlos Eduardo Umaña Acevedo on 7/7/24.
//

import Foundation

class StorageService {
    private let defaults = UserDefaults()
    
    static let shared = StorageService()
    
    func getEndpoint() -> URL? {
        return defaults.url(forKey: "end_point")
    }
}
