//
//  Menu.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/22/22.
//
// Menu Push

import SwiftUI
import ProgressHUD



struct Menu: View {
   
    //@AppStorage("global") var whatIsGlobal: Int = 0
    @State private var displayedLetter: String? = ""
    @State private var isAnimated: Bool = false
    @State private var isAnimatedG: Bool = false
    @AppStorage("globals") var globalIndex: Int = 1
    
    
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
                        displayedLetter?.append(TorU(Global: globalIndex))
                }) {
                    Text(TorU(Global: globalIndex))
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(.cyan)
                        .padding()
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
                    
                    
                    


                    if globalIndex == 0 {
                        if dnaToMRNA(dnaToMRNAInput: displayedLetter!) == "%" {
                            ProgressHUD.showError("Invalid Input")
                            
                        } else {
                            displayedLetter = dnaToMRNA(dnaToMRNAInput: displayedLetter!)
                        }
                        
                         
                    } else if globalIndex == 1 {
                        if templateStrandToMRNA(templateStrandInput: displayedLetter!) == "%" {
                            ProgressHUD.showError("Invalid Input")
                        } else {
                            displayedLetter = templateStrandToMRNA(templateStrandInput: displayedLetter!)
                        }
                       
                        
                    }
                     
                    
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
        .offset(x: 0 , y: isAnimated ? 0 : 50)
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.7)) {
                isAnimated.toggle()
            }
        })
    
    }
struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}

            
}

