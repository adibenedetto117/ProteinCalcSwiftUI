//
//  NavigationBarView.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/21/22.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPERTIES
    
    @State private var isAnimated: Bool = false
    
    //MARK: - BODY
    
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "gearshape")
                    .font(.title)
                    .foregroundColor(.black)
            })//: BUTTON
            
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform:  {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                })
            Spacer()
            
            Button(action:  {}, label: {
                Image(systemName: "questionmark.circle")
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
