//
//  LoginView.swift
//  TraccarSwiftUI-iOS
//
//  Created by Carlos Eduardo Umaña Acevedo on 7/7/24.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.colorScheme) var colorScheme

    @StateObject var vm = LoginViewModel()
    
    var textFieldColor: Color {
        return colorScheme == .dark ? .gray.opacity(0.6) : .gray.opacity(0.1)
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Traccar")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Email", text: $vm.email)
                .padding(11)
                .background(textFieldColor)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .cornerRadius(10)
            
            SecureField("Password", text: $vm.password)
                .padding(11)
                .background(textFieldColor)
                .cornerRadius(10)
            
            Button("Login") {
                Task { await vm.login() }
            }
                .padding(10)
                .frame(maxWidth: 250)
                .foregroundColor(vm.disabled ? .black.opacity(0.4) : .white)
                .background(vm.disabled ? .gray.opacity(0.4) : .blue)
                .cornerRadius(10)
                .disabled(vm.disabled)
            
            Button("Register Server") {
                
            }
        }
        .formStyle(.columns)
        .frame(width: 300)
    }
}

#Preview {
    LoginView()
}
