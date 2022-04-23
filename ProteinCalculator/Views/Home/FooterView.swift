//
//  FooterView.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/21/22.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            
            /*
            Text("Corly Inc.")
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            */
            
            Text("We love to hear feedback! If you have anything you'd like us to add contact us here.\nCorlyinc@yahoo.com")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(0)
            
            Text("\n© Copyright. All rights reserved.")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)

        }//: VSTACK
        .background(colorBackground.ignoresSafeArea(.all,edges: .all))
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            
    }
}
