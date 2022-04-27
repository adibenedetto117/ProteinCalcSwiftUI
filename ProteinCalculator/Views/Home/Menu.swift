//
//  Menu.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/22/22.
//
// Menu Push

import SwiftUI




struct Menu: View {
    @AppStorage("global") var whatIsGlobal: Int = 1

    @State private var displayedLetter: String? = ""
    var body: some View {
        

        
        
        VStack(spacing: 8){
            
            if displayedLetter!.count < 25 {
                Text(displayedLetter!)
                    .font(.system(size: 60))
                    .bold()
                    .frame(height: 50, alignment: .center)
                    .minimumScaleFactor(0.01)
                    .padding()
                
            } else if displayedLetter!.count < 59{
                Text(displayedLetter!)
                    .font(.system(size: 20))
                    .bold()
                    .frame(height: 50, alignment: .center)
                    .lineLimit(2)
                    .padding()
                
            } else {
                Text(displayedLetter!)
                    .font(.system(size: 13))
                    .bold()
                    .frame(height: 50, alignment: .center)
                    .lineLimit(3)
                    .padding()
            }
            HStack {
                Button(action: {
                    displayedLetter?.append("A")
                }) {
                    Text("A")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(.cyan)
                        .frame(width: 72, height: 56, alignment: .center)
                        .background(buttonBackground)
                        .cornerRadius(10)
                        
                }
                Button(action: {
                        displayedLetter?.append("G")
                }) {
                    Text("G")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(.cyan)
                        .padding()
                        .frame(width: 72, height: 56, alignment: .center)
                        .background(buttonBackground)
                        .cornerRadius(10)
                        
                    
                }
                Button(action: {
                        displayedLetter?.append("T")
                }) {
                    Text("T")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(.cyan)
                        .frame(width: 72, height: 56, alignment: .center)
                        .background(buttonBackground)
                        .cornerRadius(10)
                        
                }
                Button(action: {
                        displayedLetter?.append("C")
                }) {
                    Text("C")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(.cyan)
                        .padding()
                        .frame(width: 72, height: 56, alignment: .center)
                        .background(buttonBackground)
                        .cornerRadius(10)
                       
                    
                }
            }
        
            
            HStack {
        
            Button(action: {

                if let value = UIPasteboard.general.string {
                    displayedLetter?.append(value)
                } else {
                    print("Error")
                }
                    
                    
                
            }) {
                Text("Paste")
                    .bold()
                    .font(.system(size: 22))
                    .foregroundColor(.cyan)
                    .frame(width: 94, height: 56, alignment: .center)
                    .background(buttonBackground)
                    .cornerRadius(10)
                   
                
                    
            }
                Button(action: {
                    if displayedLetter != "" {
                        displayedLetter?.remove(at: displayedLetter!.index(before: displayedLetter!.endIndex))
                    }
                    
                }) {
                    Text("Delete")
                        .bold()
                        .font(.system(size: 22))
                        .foregroundColor(.cyan)
                        .frame(width: 94, height: 56, alignment: .center)
                        .background(buttonBackground)
                        .cornerRadius(10)
                    
                        
                }
                Button(action: {
                    displayedLetter = ""
                    
                }) {
                    Text("Clear")
                        .bold()
                        .font(.system(size: 22))
                        .foregroundColor(.cyan)
                        .frame(width: 94, height: 56, alignment: .center)
                        .background(buttonBackground)
                        .cornerRadius(10)
                    
                        
                }
        }
            HStack {
                Button(action: {
                    
                    displayedLetter = String(whatIsGlobal)
                    
                    //displayedLetter = codingStrandToMRNA(codingStrandInput: displayedLetter!)
                
                    
                }) {
                    
                    Text("Convert")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(.cyan)
                        .frame(width: 280, height: 56, alignment: .center)
                        .background(buttonBackground)
                        .cornerRadius(10)
                       
                    
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

