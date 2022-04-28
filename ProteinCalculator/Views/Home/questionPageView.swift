//
//  questionPageView.swift
//  ProteinCalculator
//
//  Created by Nicolas Longo on 4/27/22.
//

import SwiftUI

struct questionPageView: View {
    @AppStorage("question") var isQuestionViewActive: Bool = false
    var body: some View {
        
        
            
        
        VStack(alignment: .center) {
            Spacer()
            Button(action: {
                withAnimation(Animation.linear(duration: 0.5)) {
                    isQuestionViewActive = false
                }
            }, label: {
                Image(systemName: "xmark")
                    .font(.title)
                    .foregroundColor(.black)
                   
                
            })
                  Spacer()
            Text("?")
                .font(.system(size: 60))
                .bold()
                .overlay(
           Circle()
            .stroke(lineWidth: 5)
            .frame(width:70, height: 700, alignment: .center))
            .padding()
        
            
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
           
            
            Spacer()
        }
    }
}

struct questionPageView_Previews: PreviewProvider {
    static var previews: some View {
        questionPageView()
    }
}
