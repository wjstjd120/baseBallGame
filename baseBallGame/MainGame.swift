//
//  MainGame.swift
//  baseBallGame
//
//  Created by 전성진 on 6/13/24.
//

class MainGame {
    var answerArr: Set<Int> = []
    
    func start() {
        answerArr = setAnswer()
    }
    
    func setAnswer() -> Set<Int> {
        var arr: Set<Int> = []

        while arr.count < 3 {
            arr.insert(Int.random(in: 1...9))
        }
        
        return arr
    }
}
