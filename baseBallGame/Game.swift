//
//  Game.swift
//  baseBallGame
//
//  Created by 전성진 on 6/14/24.
//
struct Game {
    var gameCount: Int
    var tryCount: Int
}

enum Message {
    static let zeroNot = "첫자리에 0 이 들어갈수 없습니다."
    static let numberNot = "숫자만 입력해 주세요."
    static let threeNot = "3자리 숫자를 입력해 주세요."
    static let overlapNot = "중복된 숫자는 입력할수 없습니다."
    static let selectNot = "보기에 있는 숫자만 입력해 주세요."
    static let selectError = "에러입니다."
    static let welcome = "환영합니다! 원하시는 기능의 번호를 입력해 주세요."
    static let selectNum = "1. 게임 시작하기 2. 게임 기록 보기 3. 종료하기"
    static let numberInput = "숫자를 입력해 주세요."
    static let gameEnd = "종료되었습니다."
    static let win = "정답입니다."
    static let emptyArr = "진행된 게임기록이 없습니다."
    static let gameHistoryLabel = "< 게임 기록 보기 >"
    static let gameStartLabel = "< 게임 시작 >"
}
