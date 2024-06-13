//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 신지혜 on 6/11/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
