//
//  CustomReadLine.swift
//  baseBallGame
//
//  Created by 전성진 on 6/13/24.
//
class CustomReadLine { //readLine
    func answerReadLine(_ msg: String) -> [Int] {
        print(msg)
        if let str = readLine(), str.count == 3 {
            let setArr: Set = Set(str)
            if setArr.count != 3 {
                return answerReadLine(Message.overlapNot)
            }
            
            var arr: [Int] = []
            for (index, value) in str.enumerated() {
                guard let num = Int(String(value)) else {
                    return answerReadLine(Message.numberNot)
                }
                
                if index == 0 && num == 0 {
                    return answerReadLine(Message.zeroNot)
                } else {
                    arr.append(num)
                }
            }
            
            return arr
        } else {
            return answerReadLine(Message.threeNot)
        }
    }
    
    func selectReadLine() -> Int {
        if let str = readLine(), let num = Int(str), num <= 3 {
            return num
        } else {
            print(Message.selectNot)
            print(Message.selectNum)
            return selectReadLine()
        }
    }
}
