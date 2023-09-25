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

// Create a global shared container
let sharedContainer = Container()

@main
struct AssessmentDemoApp: App {
    
    @StateObject private var authenticationData = AuthenticationData()
    //let container = Container()
    let authenticationDependencies = DefaultAuthenticationDependencies()
    
    
    init() {
        FirebaseApp.configure()
        authenticationDependencies.registerDependencies(container: sharedContainer)
        
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authenticationData)
        }
    }
}
