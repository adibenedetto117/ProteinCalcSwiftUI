//
//  ScrollViewWithSnap.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/25/22.
//

import SwiftUI

struct ScrollViewWithSnap: View {
    var colors: [String] = ["Template Strand to mRNA", "mRNA to Protein", "Coding Strand to mRNA", "Double Strand to mRNA"]
    var body: some View {
        
        HStack(alignment: .center, spacing: 30) {
            ForEach(0..<colors.count) { i in
                 Text(colors[i])
                    .frame(width: 250, height:50, alignment: .center)
                     .cornerRadius(10)
                     .border(.blue,width: 3)
                
                     
            }
        }.modifier(ScrollingHStackModifier(items: colors.count, itemWidth: 250, itemSpacing: 30))
         
    }
}

struct ScrollViewWithSnap_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewWithSnap()
    }
}
