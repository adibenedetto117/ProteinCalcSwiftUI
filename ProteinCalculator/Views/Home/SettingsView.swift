//
//  SettingsView.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/22/22.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("setting") var isSettingViewActive: Bool = false
    
    //MARK: - BODY
   
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0) {
                //MARK: - FORM
                
                
                Form {
                    //MARK: - SECTION 3
                    
                    Section(header: Text("Check out our sites")) {
                        FormRowLinkView(icon: "globe", color: Color.pink, text: "Website", link: "https://www.corlyinc.com/")
                        FormRowLinkView(icon: "text.book.closed", color: Color.pink, text: "Privacy Policy", link: "https://www.termsfeed.com/live/f9671267-3b63-4378-9118-3a563beb07bf")
                    }
                    
                    
                    //MARK: - SECTION 4
                    Section(header: Text("About the application")) {
                        FormRowStaticView(icon: "doc.badge.gearshape.fill", firstText: "Application", secondText: "Protein Converter")
                        FormRowStaticView(icon: "checkmark.seal", firstText: "Compatibility", secondText: "iPhone, IPad")
                        FormRowStaticView(icon: "keyboard", firstText: "Developers", secondText: "Anthony / Nicolas")
                        FormRowStaticView(icon: "flag", firstText: "Version", secondText: "1.0.0")
                    }//: SECTION 4
                    .padding(.vertical, 3)
                    
                }//: FORM
                .listStyle(GroupedListStyle())
                .environment(\.horizontalSizeClass, .regular)
                
                //MARK: - FOOTER
                Text("Copyright ©. All rights reserved.\n Corly Inc.")
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                    .padding(.top,6)
                    .padding(.bottom, 8)
                    .foregroundColor(Color.secondary)
   
                
            } //: VSTACK
            .navigationBarItems(trailing: Button(action: {
                withAnimation(Animation.easeOut(duration: 0.5)) {
                    isSettingViewActive  = false
                }
            }) {
                Image(systemName: "xmark")
            }
            )
                  
                      
            .navigationBarTitle("Settings", displayMode: .inline)
            .background(Color("ColorBackgroundTwo").edgesIgnoringSafeArea(.all))
            
            
           
        } //: NAVIGATION
        
        
    }
    
}

    

//MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            
    }
}
// dissapointing
