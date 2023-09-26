//
//  AssessmentDemoApp.swift
//  AssessmentDemo
//
//  Created by Amit Saini on 31/08/23.
//

import SwiftUI
import Firebase

@main
struct AssessmentDemoApp: App {
 
    init() {
        FirebaseApp.configure()
        setupSwinjectContainer()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
