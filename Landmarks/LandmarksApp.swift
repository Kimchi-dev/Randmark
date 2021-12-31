//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 전태구 on 2021/12/29.
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
