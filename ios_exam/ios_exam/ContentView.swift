//
//  ContentView.swift
//  ios_exam
//
//  Created by Danil Shvetsov on 18.06.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = AuthViewModel()
    
    var body: some View {
        Group {
            if viewModel.isAuthenticated {
                WelcomeView()
            } else {
                AuthErrorView(error: viewModel.authError)
            }
        }
        .onAppear {
            viewModel.authenticate()
        }
    }
}

#Preview {
    ContentView()
}
