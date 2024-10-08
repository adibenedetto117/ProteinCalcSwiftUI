//
//  NavigationBarView.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/21/22.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPERTIES
    
    @State private var isAnimatedTitle: Bool = false
    @AppStorage("setting") var isSettingViewActive: Bool = false
    @State private var isAnimatedGear: Bool = false
    @State private var isAnimatedQuestionMark: Bool = false
    @AppStorage("question") var isQuestionViewActive: Bool = false
    
    //MARK: - BODY
    
    var body: some View {
       
        
            HStack {
                
             
               
                
                
                Button(action: {
                                 withAnimation(Animation.linear(duration: 0.5)) {
                                     isSettingViewActive = true
                                 }
                             }, label: {
                             Image(systemName: "gearshape")
                             .font(.title)
                             .foregroundColor(.black)
                             .offset(x: isAnimatedGear ? 0 : -32, y: 0)
                             .onAppear(perform: {
                                 withAnimation(.easeOut(duration: 0.7)) {
                                     isAnimatedGear.toggle()
                                 }
                             })
                             
                             
                             })//: BUTTON
                  
                    Spacer()
                    
                
                    LogoView()
                        .opacity(isAnimatedTitle ? 1 : 0)
                        .offset(x: 0, y: isAnimatedTitle ? 0 : -25)
                        .onAppear(perform:  {
                            withAnimation(.easeOut(duration: 0.5)) {
                                isAnimatedTitle.toggle()
                            }
                        })
                    Spacer()
                    
                    Button(action:  {
                        withAnimation(Animation.linear(duration: 0.5)) {
                            isQuestionViewActive = true
                        }
                        
                    }, label: {
                        Image(systemName: "questionmark.circle")
                            .font(.title)
                            .foregroundColor(.black)
                            .offset(x: isAnimatedQuestionMark ? 0 : 32, y: 0)
                            .onAppear(perform: {
                                withAnimation(.easeOut(duration: 0.7)) {
                                    isAnimatedQuestionMark.toggle()
                                }
                            })
                        
                    })//: BUTTON
                
                    
            }
            
        }//: HSTACK
        }
        
    

    //MARK: - PREVIEW
    
    struct NavigationBarView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationBarView()
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
//is 
