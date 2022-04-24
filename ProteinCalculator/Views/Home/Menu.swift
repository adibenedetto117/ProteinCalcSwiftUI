//
//  Menu.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/23/22.
//

//
//  Menu.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/22/22.
//
// Menu Push

import SwiftUI




struct Menu: View {
    

    @State private var displayedLetter: String? = ""
    var body: some View {
        
        
        
        
        
        
        VStack(spacing: 32){
            
            Text(displayedLetter!)
                .font(.system(size: 40))
                .bold()
                .frame(height: 10, alignment: .center)
            HStack(spacing: 35) {
                Button(action: {
                    displayedLetter?.append("A")
                }) {
                    Text("A")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(.cyan)
                        .frame(width: 70, height: 30, alignment: .center)
                        .background(buttonBackground)
                        .cornerRadius(30)
                }
                Button(action: {
                        displayedLetter?.append("G")
                }) {
                    Text("G")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(.cyan)
                        .padding()
                        .frame(width: 70, height: 30, alignment: .center)
                        .background(buttonBackground)
                        .cornerRadius(30)
                }
                Button(action: {
                        displayedLetter?.append("T")
                }) {
                    Text("T")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(.cyan)
                        .frame(width: 70, height: 30, alignment: .center)
                        .background(buttonBackground)
                        .cornerRadius(30)
                }
                Button(action: {
                        displayedLetter?.append("C")
                }) {
                    Text("C")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(.cyan)
                        .padding()
                        .frame(width: 70, height: 30, alignment: .center)
                        .background(buttonBackground)
                        .cornerRadius(30)
            
                }
            }
        
            
            HStack {
            Button(action: {
                
                displayedLetter = codingStrandToMRNA(codingStrandInput: displayedLetter!)
            }) {
                Text("Convert")
                    .bold()
                    .font(.system(size: 30))
                    .foregroundColor(.cyan)
                    .frame(width: 150, height: 30, alignment: .center)
                    .background(buttonBackground)
                    .cornerRadius(30)
                    
            }
            Button(action: {

                if let value = UIPasteboard.general.string {
                    displayedLetter?.append(value)
                } else {
                    print("Error")
                }
                    
                    
                
            }) {
                Text("Paste")
                    .bold()
                    .font(.system(size: 30))
                    .foregroundColor(.cyan)
                    .frame(width: 115, height: 30, alignment: .center)
                    .background(buttonBackground)
                    .cornerRadius(30)
            }
                Button(action: {
                    if displayedLetter != "" {
                        displayedLetter?.remove(at: displayedLetter!.index(before: displayedLetter!.endIndex))
                    }
                    
                }) {
                    Text("Delete")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(.cyan)
                        .frame(width: 115, height: 30, alignment: .center)
                        .background(buttonBackground)
                        .cornerRadius(30)
                }
        }
            
    }
    
    }
struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}

            
}

