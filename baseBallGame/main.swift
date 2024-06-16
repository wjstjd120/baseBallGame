//
//  main.swift
//  baseBallGame
//
//  Created by 전성진 on 6/13/24.
//
let mainGame = MainGame()
let input = CustomReadLine()

while true { //이렇게 해야 while문 탈출 구글 찾아봄
    print(Message.welcome)
    print(Message.selectNum)
    
    switch input.selectReadLine() {
    case 1 :
        mainGame.gameStart()
        continue
    case 2 :
        mainGame.gameHistoryList()
        continue
    case 3 :
        print(Message.gameEnd)
        break
    default:
        print(Message.selectError)
        break
    }
    break
}
