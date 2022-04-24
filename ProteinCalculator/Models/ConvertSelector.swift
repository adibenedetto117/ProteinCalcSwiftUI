//
//  ConvertSelector.swift
//  ProteinCalculator
//
//  Created by Nicolas Longo on 4/24/22.
//

import SwiftUI

var Categories: [Category] = []
var lastIndex: Int = 0
struct Category: Hashable {
    let id: Int
    var title: String
    var selected: Bool
    
    init (id: Int, title: String, selected: Bool) {
        self.id = id
        self.title = title
        self.selected = selected
    }
}

struct ConvertSelector: View {
    @Binding var selectedIndex: Int
    @State private var currentIndex: Int = 1
    @Namespace private var ns
    
    init(selectedIndex: Binding<Int>) {
        _selectedIndex = selectedIndex
        Categories.removeAll()
        
        Categories.append(Category(id: 0, title: "Template Strand to mRNA", selected: false))
        Categories.append(Category(id: 1, title: "mRNA to Protein", selected: true))
        Categories.append(Category(id: 2, title: "Coding Strand to mRNA", selected: false))
        Categories.append(Category(id: 3, title: "Double Strand to mRNA", selected: false))
    }
    
    
    
    var body: some View {
        VStack {
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                ScrollViewReader { scrollView in
                    
                    HStack(spacing: 35) {
                        
                        ForEach(Categories, id: \.self) { item in
                            if item.id == currentIndex {
                                ZStack() {
                                    Text(item.title)
                                        .bold()
                                        .foregroundColor(buttonBackground)
                                        
                                        
                                    
                                    
                                }
                            } else {
                                Text(item.title)
                                    .foregroundColor(.cyan)
                                    .font(.system(size: 12))
                                    .onTapGesture {
                                        withAnimation {
                                            currentIndex = item.id
                                            selectedIndex = currentIndex
                                            scrollView.scrollTo(item, anchor: .center)
                                            
                                        }
                                    }
                                    
                            }
                        }
                    }
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
               }
            }
        }
        .padding()
        
    }
}

struct ConvertSelector_Previews: PreviewProvider {
    static var previews: some View {
        ConvertSelector(selectedIndex: .constant(0))
    }
}


