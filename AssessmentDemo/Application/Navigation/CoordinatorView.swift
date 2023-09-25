//
//  CoordinatorView.swift
//  AssessmentDemo
//
//  Created by Amit Saini on 22/09/23.
//

import SwiftUI

struct CoordinatorView: View {
    
    @StateObject private var coordinator = Coordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(page: .SignIn)
                .navigationDestination(for: Page.self) { page in
                    coordinator.build(page: page)
                }
                .sheet(item: $coordinator.sheet) { sheet in
                    coordinator.build(sheet: sheet)
                }
                .fullScreenCover(item: $coordinator.fullScreen) { fullScreen in
                    coordinator.build(fullScreen: fullScreen)
                }
        }
        .environmentObject(coordinator)
    }
    
    
}

struct CoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        CoordinatorView()
    }
}
