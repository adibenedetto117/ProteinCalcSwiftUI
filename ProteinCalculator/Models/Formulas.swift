//
//  Formulas.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/20/22.
//

import Foundation

struct Formulas {
    var codingStrandInput: String
    var doubleStrandInputLineOne: String
    var doubleStrandInputLineTwo: String
    var templateStrandInput: String
    var dnaToMRNAInput: String
    
    //MARK CODINGSTRAND
    func codingStrandToMRNA() -> String {
        if codingStrandInput.uppercased().contains("T") {
            return codingStrandInput.replacingOccurrences(of: "T", with: "U")
        } else {
            return "Invalid Input"
        }
    }
    
    func doubleStrandToMRNA() -> String {
        if doubleStrandInputLineOne.uppercased().contains("ATG") {
            return doubleStrandInputLineOne.uppercased().replacingOccurrences(of: "T", with: "U")
        } else if doubleStrandInputLineTwo.uppercased().contains("GTA") {
            return String(doubleStrandInputLineTwo.uppercased().replacingOccurrences(of: "T", with: "U").reversed())
        } else {
            return "Invalid Input"
        }
    }
    
    func templateStrandToMRNA() -> String {
        var outputFinal: String = ""
        var output: [String] = []
        
        for char in templateStrandInput {
            switch char {
            case "A":
                output.append("U")
            case "T":
                output.append("A")
            case "G":
                output.append("C")
            case "C":
                output.append("G")
            default:
                return "Invalid Input"
            }
        }
        for i in output {
            outputFinal = outputFinal + i
        }
        return outputFinal
    }
    
    func dnaToMRNA() -> String {
        let substring = "AUG"
        if dnaToMRNAInput.contains(substring) {
            
        } else {
            
        }
    }
}
