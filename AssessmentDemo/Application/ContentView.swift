//
//  ContentView.swift
//  AssessmentDemo
//
//  Created by Amit Saini on 31/08/23.
//

import SwiftUI
import AssessmentAuthentication
import AssessmentHome
import Swinject

struct ContentView: View {
    @EnvironmentObject var authenticationData: AuthenticationData
    var body: some View {
        //print(authenticationData.signUPValue)
        CoordinatorView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



