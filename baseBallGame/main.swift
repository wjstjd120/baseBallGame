//
//  main.swift
//  baseBallGame
//
//  Created by 전성진 on 6/13/24.
//
let mainGame = MainGame()
let input = CustomReadLine()
mainGame.start()

while true {
    var strike: Int = 0
    var ball: Int = 0
    
    let maching: [Int: Int] = Dictionary(uniqueKeysWithValues: zip(mainGame.answerArr, input.customReadLine("숫자를 입력해 주세요.")))
    
    for (key, value) in maching {
        if key == value {
            strike += 1
        } else if maching.keys.contains(value) {
            ball += 1
        }
    }
    
    if strike == 3 {
        print("게임 끝")
        break
    } else if strike != 0 || ball != 0 {
        print("\(strike)스트라이크, \(ball)볼")
    } else {
        print("Nothing")
    }
}
