//
//  ContentView.swift
//  TraccarSwiftUI
//
//  Created by Carlos Eduardo Umaña Acevedo on 7/7/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var authViewModel = AuthViewModel.shared
    
    var body: some View {
        if authViewModel.isAuth {
            HomeView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    ContentView()
}
