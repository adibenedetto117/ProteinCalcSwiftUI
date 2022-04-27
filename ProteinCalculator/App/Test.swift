//
//  Test.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/25/22.
//

import SwiftUI

struct Test: View {
    let colors: [String] = ["Hello","Bye","Chub"]

    var body: some View {
           HStack {
               ForEach(colors, id: \.self) { color in
                   Text(color)
               }
           }
       }
   }
struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
