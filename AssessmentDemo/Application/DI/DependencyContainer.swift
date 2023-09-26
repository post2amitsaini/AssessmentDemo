//
//  DependencyContainer.swift
//  AssessmentDemo
//
//  Created by Amit Saini on 25/09/23.
//

import Swinject
import AssessmentCore

let container = Container()

func setupSwinjectContainer() {
    //container.register(Logger.self) { _ in ConsoleLogger() }
    container.register(Logger.self, name: "consoleLogger") { _ in ConsoleLogger() }
    container.register(Logger.self, name: "fileLogger") { _ in FileLogger() }
}


