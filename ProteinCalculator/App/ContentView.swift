//
//  ContentView.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/20/22.
//

import SwiftUI
//MARK: - PROPERTIES

//MARK: - BODY

struct ContentView: View {
    @AppStorage("setting") var isSettingViewActive: Bool = false
    
    @State private var selectedIndex: Int = 1
    var body: some View {
        ZStack {
            if isSettingViewActive == false {
                VStack(spacing: 0) {
                    
                    
                    
                    let keyWindow = UIApplication.shared.connectedScenes
                        .compactMap({$0 as? UIWindowScene})
                        .first?.windows
                        .filter({$0.isKeyWindow}).first
                   
                    
                    NavigationBarView()
                        .padding(.horizontal,15)
                        .padding(.bottom)
                        .padding(.top, keyWindow?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ConvertSelector(selectedIndex: $selectedIndex)
                        .background(colorBackground)
                     
                     
                    Spacer()
                    
                    
                   
                    Spacer()
                    Menu()
                    
                    
                    
                }.padding(.bottom, 20)//: VSTACK
                .background(colorBackground.ignoresSafeArea(.all,edges: .all))
            } else {
                SettingsView()
            }
            
           
            
            
            
        }//: ZSTACK
        .ignoresSafeArea(.all,edges: .top)
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//joey
