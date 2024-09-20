//
//  AppApp.swift
//  App
//
//  Created by Alexandre Robaert on 16/07/24.
//

import SwiftUI
import SwiftData
import Home

@main
struct AppApp: App {
    var body: some Scene {
        WindowGroup {
            HomeFactory.makeHome()
        }
    }
}
