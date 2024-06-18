//
//  ios_examApp.swift
//  ios_exam
//
//  Created by Danil Shvetsov on 18.06.2024.
//

import SwiftUI
import SwiftData

@main
struct ios_examApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.locale, Locale(identifier: Locale.preferredLanguages.first ?? "en"))
                .preferredColorScheme(nil)
        }
    }
}
