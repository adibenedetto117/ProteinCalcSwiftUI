//
//  Menu.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/22/22.
//
// Menu Push
import SnapToScroll
import SwiftUI

struct Menu: View {

    

    @State private var displayedLetter: String? = ""



    var body: some View {
        
        HStackSnap(alignment: .center(8)) {
            ForEach(0..<4, id:\.self) { number in
                RoundedRectangle(cornerRadius: 10)
                    .fill(.background)
                    .frame(width: 100, height: 40)
                    .overlay(Text(number, format: .number).foregroundColor(.cyan))
                        .snapAlignmentHelper(id: number)
            }
        }
        
        
        
        
        VStack(spacing: 32){
            Text(displayedLetter!)
                .font(.system(size: 40))
                .bold()
                .frame(height: 10, alignment: .center)

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

