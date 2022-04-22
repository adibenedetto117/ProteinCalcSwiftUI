//
//  LogoView.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/22/22.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("Protein converter".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            /*
            Image("New_Logo3")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 30, alignment: .center)
             
            
            Text("CONVERTER")
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
             */
        }//: Hstack
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
