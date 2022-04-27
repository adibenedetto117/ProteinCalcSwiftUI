//
//  questionPageView.swift
//  ProteinCalculator
//
//  Created by Nicolas Longo on 4/27/22.
//

import SwiftUI

struct questionPageView: View {
    var body: some View {
        
        
            Text("?")
                .font(.system(size: 60))
                .bold()
                .overlay(
           Circle()
            .stroke(lineWidth: 5)
            .frame(width:70, height: 700, alignment: .center))
            .padding()
        
        
        VStack(alignment: .leading) {
            
           
            
            HStack() {
                Text("DNA to mRNA:")
                    .bold()
                Text("Enter template strand and click covert")
            }
            HStack {
                Text("mRNA to Protein:")
                    .bold()
                Text("Enter mRNA and click convert")
            }
            
            HStack {
                Text("Double strand:")
                    .bold()
                Text("Enter the template strand")
            }
            
            Spacer()
            
        }
        VStack {
        Text("FAQ")
            .bold()
            .font(.system(size: 50))
        }
        VStack(alignment: .leading) {
            Text("How to find the template strand from a doubles stranded ")
        }
    }
}

struct questionPageView_Previews: PreviewProvider {
    static var previews: some View {
        questionPageView()
    }
}
