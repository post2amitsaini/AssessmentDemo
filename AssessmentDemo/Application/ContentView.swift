//
//  ContentView.swift
//  AssessmentDemo
//
//  Created by Amit Saini on 31/08/23.
//

import SwiftUI
import AssessmentAuthentication

struct ContentView: View {
    
    var body: some View {
        NavigationView {
                MovieListView()
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

