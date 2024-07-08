//
//  LoginViewModel.swift
//  TraccarSwiftUI
//
//  Created by Carlos Eduardo Umaña Acevedo on 7/7/24.
//

import Foundation

struct AuthModel: Codable {
    let token: String
    let refreshToken: String
}

class LoginViewModel: ObservableObject {
    let http = HttpService()
    
    @Published var email = ""
    @Published var password = ""
    
    var disabled: Bool {
         return email.isEmpty || password.isEmpty
    }
    
    func login() async -> Bool {
        do {
            let data = try JSONEncoder().encode(["email": email, "password": password])
            
            let response: AuthModel = try await http.fetch(url: "/login", method: .POST(data: data))
            
            return true
        } catch {
            return false
        }
    }
}
