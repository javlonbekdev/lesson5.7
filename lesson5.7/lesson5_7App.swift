//
//  lesson5_7App.swift
//  lesson5.7
//
//  Created by Javlonbek on 26/01/22.
//

import SwiftUI

@main
struct lesson5_7App: App {
    @StateObject var status = Status()
    var body: some Scene {
        WindowGroup {
            StartScreen()
                .environmentObject(status)
        }
    }
}
