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
        
        
        VStack {
        
        VStack(alignment: .center) {
                Text("?")
                    .font(.system(size: 60))
                    .foregroundColor(buttonBackground)
                    .bold()
                    .overlay(
               Circle()
                .stroke(lineWidth: 5)
                .fill(buttonBackground)
                .frame(width:70, height: 700, alignment: .center))
                .padding()
                .padding()
                .padding()
                .padding()
        }
        
            
    Spacer()
            
        
            VStack {
                
                    Text("DNA to mRNA:")
                        .bold()
                    Text("Enter a template strand and click covert to produce the complementary mRNA strand")
                    .multilineTextAlignment(.center)
                
            }
            Spacer()
            VStack {
                
                    Text("mRNA to Protein:")
                        .bold()
                    Text("Enter a mRNA and click convert to produce the amino acid chain")
                    .multilineTextAlignment(.center)

            }
            Spacer()
            VStack {
                
                    Text("Double strand:")
                        .bold()
                    Text("Enter the template strand of the double strand and click convert to produce the complementary mRNA strand")
                    .multilineTextAlignment(.center)

            }
            
            
            

        
            
          Spacer()
           
            Button(action: {
                withAnimation(Animation.linear(duration: 0.5)) {
                    isQuestionViewActive = false
                }
            }, label: {
                Image(systemName: "arrow.backward")
                    .font(.title)
                    .foregroundColor(.blue)
                    .padding()
                    .padding()
                    

                   
                
            })
        }
            
    }
    
}

struct questionPageView_Previews: PreviewProvider {
    static var previews: some View {
        questionPageView()
    }
}

