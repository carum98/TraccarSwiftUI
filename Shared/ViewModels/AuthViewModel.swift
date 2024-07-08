//
//  AuthViewModel.swift
//  TraccarSwiftUI
//
//  Created by Carlos Eduardo Umaña Acevedo on 7/7/24.
//

import Foundation

class AuthViewModel: ObservableObject {
    @Published var isAuth = false

    static let shared = AuthViewModel()
}
