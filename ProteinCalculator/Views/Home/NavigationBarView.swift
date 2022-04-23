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
    
    //MARK: - BODY
    
    var body: some View {
        HStack {
            
            
             Button(action: {
                 withAnimation(Animation.easeOut(duration: 0.5)) {
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
            
            
            /*
            Image(systemName: "gearshape")
                .font(.title)
                .foregroundColor(.black)
                .onTapGesture {
                    withAnimation(.easeOut) {
                        isSettingViewActive = true
                    }
                }
              */
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
                
                Button(action:  {}, label: {
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

