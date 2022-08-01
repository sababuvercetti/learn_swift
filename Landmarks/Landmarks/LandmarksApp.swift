//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Samuel Baraka on 21/07/2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
