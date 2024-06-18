//
//  AuthErrorView.swift
//  ios_exam
//
//  Created by Danil Shvetsov on 18.06.2024.
//

import SwiftUI

struct AuthErrorView: View {
    let error: String?
    
    var body: some View {
        VStack {
            if let error = error {
                Text(error)
                    .foregroundColor(.red)
                    .padding()
            }
            Text("authentication_failed")
                .padding()
        }
    }
}
