//
//  studyWithSwiftApp.swift
//  studyWithSwift
//
//  Created by admin on 16/6/2567 BE.
//

import SwiftUI
import SwiftData

@main
struct studyWithSwiftApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: toReadBook.self)
    }
}
