//
//  NavigationBarView.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/21/22.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "gearshape")
                    .font(.title)
                    .foregroundColor(.black)
            })//: BUTTON
            
            
            Spacer()
            
            Button(action:  {}, label: {
                Image(systemName: "questionmark")
                    .font(.title)
                    .foregroundColor(.black)
            })//: BUTTON
            
        }//: HSTACK
    }
}

//MARK: - PREVIEW

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
