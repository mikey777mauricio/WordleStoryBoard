//
//  Board.swift
//  wordle
//
//  Created by Mikey Mauricio on 4/22/22.
//

import Foundation
import UIKit
var board = [[BoardItem]]()

func resetBoard(){
    board.removeAll()
    for row in 0...5{
        var rowArray = [BoardItem]()
        for column in 0...6{
            let indexPath = IndexPath.init(item: column, section: row)
            let boardItem = BoardItem(indexPath: indexPath, tile: Tile.Empty)
            rowArray.append(boardItem)
            
        }
        
        board.append(rowArray)
    }

}

func getBoardItem(_ indexPath: IndexPath) -> BoardItem {
    return board[indexPath.section][indexPath.item]
}
func updateBoardWithBoardItem(_ boardItem: BoardItem)
{
    if let indexPath = boardItem.indexPath{
        board[indexPath.section][indexPath.item] = boardItem
    }
}

func boardIsFull() -> Bool{
    for row in board {
        for column in row{
            if column.empyTile(){
                return false
            }
        }
    }
    return true
    
}
