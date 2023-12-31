//
//  Coordinator.swift
//  AssessmentDemo
//
//  Created by Amit Saini on 22/09/23.
//

import SwiftUI
import AssessmentAuthentication
import AssessmentHome
import AssessmentCore

enum Page: String, Identifiable {
    case SignIn,SignUp, Home
    
    var id: String {
        self.rawValue
    }
}

enum Sheet: String, Identifiable {
    case abc
    
    var id: String {
        self.rawValue
    }
}

enum FullSheetCover: String, Identifiable {
    case xyz
    
    var id: String {
        self.rawValue
    }
}

class Coordinator: ObservableObject {
    @Published var path = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreen: FullSheetCover?
    private let consoleLogger: Logger
    
    init() {
        //logger = container.resolve(Logger.self)!
        consoleLogger = container.resolve(Logger.self, name: "consoleLogger")!
    }
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    func present(fullScreenCover: FullSheetCover) {
        self.fullScreen = fullScreenCover
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissFullScreenCover() {
        self.fullScreen = nil
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .SignIn:
            SigninView(onSignUpTapped: {
                self.consoleLogger.log("SigninView: SigninView Pushed...", level: .info)
                self.push(.SignUp)
            }, onSuccessfulLogin: {
                self.push(.Home)
            })
            //authenticationCoordinator.view(for: .SignIn)
        case .SignUp:
            SignUpView(onSuccessfulSignUp: {
                self.push(.Home)
            })
        case .Home:
            MovieListView()
        }
    }
    
    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        switch sheet {
        case .abc:
            EmptyView()
        }
    }
    
    @ViewBuilder
    func build(fullScreen: FullSheetCover) -> some View {
        switch fullScreen {
        case .xyz:
            EmptyView()
        }
    }
}
