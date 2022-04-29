//
//  ProteinCalculatorApp.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/20/22.
//

import SwiftUI

@main


struct ProteinCalculatorApp: App {
    
    @AppStorage("setting") var isSettingViewActive: Bool = false
    @AppStorage("question") var isQuestionViewActive: Bool = false
    init() {
        isSettingViewActive = false
        isQuestionViewActive = false
        
    }
    var body: some Scene {
        
        WindowGroup {
            
            ContentView()
        }
    }
}
