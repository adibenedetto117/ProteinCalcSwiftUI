//
//  Formulas.swift
//  ProteinCalculator
//
//  Created by Anthony Dibenedetto on 4/20/22.
//
//This file contains the struct for the formulas for the 4 main operations of this app. Each one of these is done through simple string manipulation. If the provided input doesn't meet certain criteria "Invalid Input" will be returned as of currently. 

import Foundation


extension Menu {
    
    //MARK: CODINGSTRAND
    func codingStrandToMRNA(codingStrandInput: String) -> String {
        if codingStrandInput.uppercased().contains("T") {
            return codingStrandInput.replacingOccurrences(of: "T", with: "U")
        } else {
            return "Invalid Input"
        }
    }
    //MARK: DOUBLESTRAND
    func doubleStrandToMRNA(doubleStrandInputLineOne: String, doubleStrandInputLineTwo: String) -> String {
        if doubleStrandInputLineOne.uppercased().contains("ATG") {
            return doubleStrandInputLineOne.uppercased().replacingOccurrences(of: "T", with: "U")
        } else if doubleStrandInputLineTwo.uppercased().contains("GTA") {
            return String(doubleStrandInputLineTwo.uppercased().replacingOccurrences(of: "T", with: "U").reversed())
        } else {
            return "Invalid Input"
        }
    }
    
    func TorU(Global: Int) -> String {
        if Global == 1 {
            return "T"
        } else {
            return "U"
        }
    }
    
    //MARK: TEMPLATESTRAND
    func templateStrandToMRNA(templateStrandInput: String) -> String {
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
                return "%"
            }
        }
        for i in output {
            outputFinal = outputFinal + i
        }
        return outputFinal
    }
    
    //MARK: DNATOMRNA
    func dnaToMRNA(dnaToMRNAInput: String) -> String {
        var index = 0
        let string = dnaToMRNAInput.uppercased()
        let substring = "AUG"
        if string.contains(substring) {
            for char in string {
                if substring.first == char {
                    let startOfFoundCharacter = string.index(string.startIndex, offsetBy: index)
                    let lengthOfFoundCharacter = string.index(string.startIndex, offsetBy: (substring.count + index))
                    let range = startOfFoundCharacter..<lengthOfFoundCharacter
                    if string.substring(with: range) == substring {
                        let startOfmRNAString = string.substring(from: startOfFoundCharacter)
                        var counter = 0
                        var threeCharString = ""
                        var finalArray: [String] = []
                        for char in startOfmRNAString {
                            threeCharString = threeCharString + String(char)
                            counter = counter + 1
                            if counter == 3 {
                                finalArray.append(threeCharString)
                                counter = 0
                                threeCharString = ""
                            }
                        }
                        let codonsToMorse: [String: String] = [
                            "UUU": "Phe",
                            "UUC": "Phe",
                            "UUA": "Leu",
                            "UUG": "Leu",
                            "CUU": "Leu",
                            "CUC": "Leu",
                            "CUA": "Leu",
                            "CUG": "Leu",
                            "AUU": "Ile",
                            "AUC": "Ile",
                            "AUA": "Ile",
                            "AUG": "Met",
                            "GUU": "Val",
                            "GUC": "Val",
                            "GUA": "Val",
                            "GUG": "Val",
                            "UCU": "Ser",
                            "UCC": "Ser",
                            "UCA": "Ser",
                            "UCG": "Ser",
                            "CCU": "Pro",
                            "CCC": "Pro",
                            "CCA": "Pro",
                            "CCG": "Pro",
                            "ACU": "Thr",
                            "ACC": "Thr",
                            "ACA": "Thr",
                            "ACG": "Thr",
                            "GCU": "Ala",
                            "GCC": "Ala",
                            "GCA": "Ala",
                            "GCG": "Ala",
                            "UAU": "Tyr",
                            "UAC": "Tyr",
                            "UAA": "",
                            "UAG": "",
                            "CAU": "His",
                            "CAC": "His",
                            "CAA": "Gln",
                            "CAG": "Gln",
                            "AAU": "Asn",
                            "AAC": "Asn",
                            "AAA": "Lys",
                            "AAG": "Lys",
                            "GAU": "Asp",
                            "GAC": "Asp",
                            "GAA": "Glu",
                            "GAG": "Glu",
                            "UGU": "Cys",
                            "UGC": "Cys",
                            "UGA": "",
                            "UGG": "Trp",
                            "CGU": "Arg",
                            "CGC": "Arg",
                            "CGA": "Arg",
                            "CGG": "Arg",
                            "AGU": "Ser",
                            "AGC": "Ser",
                            "AGA": "Arg",
                            "AGG": "Arg",
                            "GGU": "Gly",
                            "GGC": "Gly",
                            "GGA": "Gly",
                            "GGG": "Gly"
                        ]
                        var MRNAFinalText = ""
                        for element in finalArray {
                            if let MRNAFinalTextChar = codonsToMorse["\(element)"] {
                                if MRNAFinalTextChar == "" {
                                    break
                                } else {
                                    MRNAFinalText +=  MRNAFinalTextChar + "-"
                                }
                            } else {
                                return "%"
                            }
                        }
                        return String(MRNAFinalText.dropLast())
                    }
                }
                index += 1
            }
        } else {
            return "%%"
        }
        return "%"
    }
}
