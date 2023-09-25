//
//  AssessmentDemoApp.swift
//  AssessmentDemo
//
//  Created by Amit Saini on 31/08/23.
//

import SwiftUI
import Firebase
import AssessmentAuthentication
import Swinject

@main
struct AssessmentDemoApp: App {
 
    init() {
        FirebaseApp.configure()        
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
