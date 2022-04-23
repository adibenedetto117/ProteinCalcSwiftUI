//
//  Menu.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/22/22.
//

import SwiftUI

struct Menu: View {
    @State private var displayedLetter: String? = ""
    
    var body: some View {
        VStack(spacing: 32){
            Text(displayedLetter!)
                .font(.system(size: 60))
            
            HStack(spacing: 32) {
                Button("A") {
                    displayedLetter?.append("A")
                }
                
                Button("T") {
                    displayedLetter?.append("T")
                }
                
                Button("G") {
                    displayedLetter?.append("G")
                }
                
                Button("C") {
                    displayedLetter?.append("C")
                }
                
                Button("U") {
                    displayedLetter?.append("U")
                }
                
            }
            
        }//:VSTACK
        .font(.title3)
    }
    
    
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
