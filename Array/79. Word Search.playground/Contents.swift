//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        
        var _board = board
        if board == nil || word == nil || board.count == 0 || word.count == 0
        {
            return false
        }
        
        for i in 0..<board.count
        {
            for j in 0..<board[0].count
            {
                if dfs(&_board,word,i: i,j: j,pos: 0)
                {
                    return true
                }
            }
        }
        
        return false
    }
    
    func dfs(_ board: inout  [[Character]], _ word: String,i : Int, j: Int,pos: Int) ->Bool
    {
        var wordArray = Array(word)
        if pos == word.count
        {
            return true
        }
        if i >= board.count || i < 0 || j < 0 || j >= board[0].count
        {
            return false
        }
        if board[i][j] == "#"
        {
            return false
        }
        if board[i][j] != wordArray[pos]
        {
            return false
        }
        var tmp = board[i][j]
        board[i][j] = "#"
        
        var res: Bool = dfs(&board, word, i: i - 1, j: j, pos: pos + 1)||dfs(&board, word, i:i + 1, j:j,pos: pos + 1)
            || dfs(&board, word, i: i, j: j - 1, pos: pos + 1)
            || dfs(&board, word, i: i, j: j + 1, pos: pos + 1)
        
        board[i][j] = tmp
        return res
    }
}

