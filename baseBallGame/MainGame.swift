//
//  MainGame.swift
//  baseBallGame
//
//  Created by 전성진 on 6/13/24.
//
class MainGame {
    var answerArr: [Int] = []
    var gameArr: [Game] = []
    var gameCount: Int = 0
    
    func gameHistoryList() {
        if gameArr.isEmpty {
            print(Message.emptyArr)
        } else {
            print(Message.gameHistoryLabel)
            for game in gameArr {
                print("\(game.gameCount)번째 게임 : 시도횟수 - \(game.tryCount)")
            }
        }
    }
    
    func gameHistoryInsert(_ game: Game) {
        gameArr.append(game)
    }
    
    func setAnswer() -> [Int] {
        let arr: [Int] = Array(0...9).shuffled()
        
        return arr[0] == 0 ? Array(arr[1...3]) : Array(arr[0...2])
    }
    
    func gameStart() {
        var tryCount: Int = 0 //시도횟수 초기화
        gameCount += 1 //게임 횟수 +1
        answerArr = setAnswer()
        
        while true {
            print(answerArr)
            var strike: Int = 0
            var ball: Int = 0
            
            /*enumerated() 메서드는 정수와 아이템을 조합하여 튜플로 반환합니다. 정수는 0부터 시작하여 각 아이템에 대해 1씩 증가합니다. 전체 배열을 열거하는 경우 이 정수는 아이템의 인덱스와 일치합니다. 튜플을 임시의 상수 또는 변수도 분해할 수 있습니다:*/
            for (index, value) in input.answerReadLine(Message.numberInput).enumerated() {
                if answerArr[index] == value {
                    strike += 1
                } else if answerArr.contains(value) {
                    ball += 1
                }
            }
            
            tryCount += 1 //시도횟수 증가
            
            var msg: String = ""
            
            if strike == 3 {
                let game: Game = Game(gameCount: gameCount, tryCount: tryCount)
                gameHistoryInsert(game)
                print(Message.win)
                break
            }
            
            if strike != 0 {
                msg += "\(strike)스트라이크 "
            }
            if ball != 0 {
                msg += "\(ball)볼"
            }
            if strike == 0 && ball == 0 {
                msg = "Nothing"
            }
            print(msg)
        }
    }
}
