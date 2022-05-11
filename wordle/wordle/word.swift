//
//  word.swift
//  wordle
//
//  Created by Mikey Mauricio on 4/21/22.
//

import Foundation
import UIKit

func getWords() -> Array<String> {
    if let path = Bundle.main.path(forResource: "sgb-words", ofType: "txt") {
        do {
            let data = try String(contentsOfFile: path, encoding: .utf8)
            let myStrings = data.components(separatedBy: .newlines)
            
            let words = myStrings
            return words
        } catch {
            print(error)
        }
    }
    return []
}

