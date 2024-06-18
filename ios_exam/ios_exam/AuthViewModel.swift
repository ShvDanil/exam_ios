//
//  AuthViewModel.swift
//  ios_exam
//
//  Created by Danil Shvetsov on 18.06.2024.
//

import Foundation
import LocalAuthentication
import Combine

class AuthViewModel: ObservableObject {
    @Published var isAuthenticated = false
    @Published var authError: String?
    
    func authenticate() {
        let context = LAContext()
        var error: NSError?

        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Log in with Face ID / Touch ID") { success, authenticationError in
                DispatchQueue.main.async {
                    if success {
                        self.isAuthenticated = true
                    } else {
                        self.authError = authenticationError?.localizedDescription
                        self.isAuthenticated = false
                    }
                }
            }
        } else {
            DispatchQueue.main.async {
                self.authError = "Biometrics not available"
                self.isAuthenticated = false
            }
        }
    }
}

