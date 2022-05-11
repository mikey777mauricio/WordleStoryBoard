//
//  BoardItem.swift
//  wordle
//
//  Created by Mikey Mauricio on 4/22/22.
//

import Foundation
import UIKit

enum Tile{
    case Green
    case Yellow
    case Empty
    
}

struct BoardItem{
    var indexPath: IndexPath!
    var tile: Tile!
    
    func greenTile() -> Bool {
        return tile == Tile.Green
    }
    func yellowTile() -> Bool {
        return tile == Tile.Yellow
    }
    func empyTile() -> Bool {
        return tile == Tile.Empty
    }
    
    func titleColor() -> UIColor{
        if greenTile(){
            return .green
        }
        if yellowTile(){
            return .red
        }
        return .white
    }
}
