//
//  SettingsView.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/22/22.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
   
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0) {
                //MARK: - FORM
                
                
                Form {
                    Text("Hello, World!")
                }//: FORM
                
                //MARK: - FOOTER
                FooterView()
                    .padding(.horizontal)
   
                
            } //: VSTACK
            .navigationBarTitle("Settings", displayMode: .inline)
            
           
        } //: NAVIGATION
    }
    
}

//MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            
    }
}
